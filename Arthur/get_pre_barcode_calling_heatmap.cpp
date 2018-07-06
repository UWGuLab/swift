/*
 * Construct pre-barcode-calling-heatmap by passing in the intensity file
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
#include <cstdint>
#include <numeric>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <boost/algorithm/string.hpp>
using namespace cv;
using namespace std;

static std::string getProjectName(const std::string filename) {
  std::vector<std::string> tmp_line;
  boost::split(tmp_line, filename, boost::is_any_of("."));
  return tmp_line[tmp_line.size() - 1];
}

int main(int argc, char const *argv[]) {
  if (argc < 2) {
    std::cerr << "Usage: ./[this program] [file1] [file2] ..." << '\n';
    exit(1);
  }
  std::string projectname = getProjectName(argv[1]);
  Mat image(1024, 1024, CV_8UC1);
  for (int i = 0; i < argc - 1; i++) {
    std::ifstream input (argv[i+1], std::ifstream::in);
    std::string line;
    uint32_t x=0, y=0;
    while(std::getline(input, line)) {
      std::vector<std::string> v;
      boost::split(v, line, boost::is_any_of(" "));
      if (v.size() == 8) {
        // 1 1 x y intensity1 intensity2 intensity3 intensity4
        x = std::stoi(v[2]);
        y = std::stoi(v[3]);
        image.at<uint8_t>(y, x) = static_cast<uint8_t>(100);
      }
    }
    input.close();
  }
 // namedWindow("Display window", WINDOW_AUTOSIZE);
//  imshow("Display window", image);
//  waitKey(0);
  projectname = std::string("pre_BarcodeCalling_Heatmap") + projectname
                                                          + std::string(".tif");
  //imwrite("pre_BarcodeCalling_Heatmap.tif", image);
  imwrite(projectname, image);
  std::cout << "pre barcode calling heatmap COMPLETE" << '\n';
  return 0;
}
