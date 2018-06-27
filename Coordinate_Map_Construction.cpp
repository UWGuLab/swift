/*
 * Construct Cluster Coordiantes by passing in the fastq file
 * from Swift.
 *
 * --Arthur 6/20/2018
 *
 */
#include <iostream>
#include <string>
#include <cstdlib>
#include <vector>
#include <opencv2/opencv.hpp>
#include <boost/algorithm/string.hpp>
using namespace cv;

int main(int argc, char** argv) {
  if (argc != 1) {
    std::cerr << "Usage: cat fastq.[name].[pf or nonpf] ./[this program]" << std::endl;
    exit(1);
  }
  Mat image(1794, 2048, CV_64F);
  std::string line;
  std::vector<string> tmp_line;
  while (std::getline(std::cin, line)) {
    // split to get information
    boost::split(tmp_line, line, boost::is_any_of(":"));
    // convert string representation to indices
    int x, y;
    std::stringstream x_(tmp_line[1]), y_(tmp_line[2]);
    x_ >> x;
    y_ >> y;

    // print out indices for sanity check
    std::cout << "(" << x << ", " << y << ")" << std::endl;

    image.at<double>(x,y)=1;
    // skip the next 3 lines
    for (int i = 0; i < 3; i++) {
      std::getline(std::cin, line);
    }
  }
  imwrite("image.png", image);
  return 0;
}
