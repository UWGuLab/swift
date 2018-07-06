/*
 * Construct post-bacode-calling heatmap by passing in the fastq file
 * from Swift.
 *
 * --Arthur 6/20/2018
 *
 */
#include <iostream>
#include <utility>
#include <string>
#include <cstdlib>
#include <vector>
#include <numeric>
#include <cstdint>
#include <opencv2/opencv.hpp>
#include <boost/algorithm/string.hpp>
using namespace cv;
using namespace std;
// x and y are output parameters
static void getPosition(const std::string &line, uint32_t &x, uint32_t &y) {
  std::vector<std::string> tmp_line;
  boost::split(tmp_line, line, boost::is_any_of(":"));
  std::stringstream x_(tmp_line[1]), y_(tmp_line[2]);
  x_ >> x;
  y_ >> y;
  if(x > 1794 || y > 2048) {
    std::cerr << "These are not coordiantes";
    exit(1);
  }
}

static void getSumAndstd (std::vector<int> &v, uint32_t &sum, double &stdev) {
  sum = static_cast<uint32_t>(std::accumulate(v.begin(), v.end(), 0.0));
  double mean = static_cast<double>(sum) / v.size();

  std::vector<double> diff(v.size());
  std::transform(v.begin(), v.end(), diff.begin(),
               std::bind2nd(std::minus<double>(), mean));
  double sq_sum = std::inner_product(diff.begin(), diff.end(), diff.begin(), 0.0);
  stdev = std::sqrt(sq_sum / v.size());
}

static std::string getProjectName(const std::string filename) {
  std::vector<std::string> tmp_line;
  boost::split(tmp_line, filename, boost::is_any_of("."));
  return tmp_line[tmp_line.size() - 2];
}

int main(int argc, char** argv) {
  if (argc < 2) {
    std::cerr << "Usage: ./[this program] [file1] [file2] [file3] ..." << std::endl;
    exit(1);
  }
  std::string projectname = getProjectName(std::string(argv[1]));
  // Heatmap, fixed image size, might subject to changes
  // most screens can only support 8 bit depth
  Mat image(1024, 1024, CV_8UC1);
  // Heatmap reference
  std::ofstream ref;
  ref.open("Heatmap_reference_" + projectname + ".txt");
  std::vector<std::pair<uint32_t, uint32_t>> poi_info;
  std::vector<uint32_t> inten_info;
  uint32_t min = 100000000;
  uint32_t max = 0;
  for(int i = 0; i < argc - 1; i++){
    std::ifstream input (argv[i+1], std::ifstream::in);
    std::string line;
    int curr_line = 1;
    uint32_t x=0,y=0;
    std::string sequence;
    while (std::getline(input, line)) {
        if (curr_line % 4 == 1) {
          // first line, extract information about the position of the cluster
          getPosition(line, x, y);
        } else if (curr_line % 4 == 2) {
          // second line, get the sequence data
          sequence = line;
        } else if (curr_line % 4 == 3) {
          // skip the 3rd line, because it doesn't have any useful information
        } else {
          // 4th line, should contain information of the probabilityes
          std::vector<int> scores;
          for (char tmp : line) {
            // 33 is the current quality conversion from fastqWriter.h
            // might subject to changes
            scores.push_back(static_cast<int>(tmp) - 33);
          }
          uint32_t sum;
          double stdev;
          getSumAndstd(scores, sum, stdev);
          // store sum and x and y for later use
          poi_info.push_back(std::make_pair(x, y));
          inten_info.push_back(sum);
          // store min max value for later use
          max = sum > max ? sum : max;
          min = sum < min ? sum : min;
          // get the reference text ready
          ref << "Index:   (" << x << "," << y << ") " << "\r\n";
          ref << "Sequence: " << sequence << "\r\n";
          ref << "Sum:      " << sum << "\r\n";
          ref << "Stdev     " << stdev << "\r\n";
          ref << "\r\n";
        }
        curr_line++;
    }
    input.close();
  }
  // feature scaling the intensity and putting it into the graph
  for (int i = 0; i < inten_info.size(); i++) {
    // opencv mat's indicies is reverse for imwrite
    image.at<uint8_t>(poi_info[i].second, poi_info[i].first)
      = static_cast<uint8_t>(255);
  }
  imwrite("Sequence_Scores_Heatmap_" + projectname + ".tif", image);
  std::cout << "post barcode calling heatmap COMPLETE" << '\n';
  return 0;
}
