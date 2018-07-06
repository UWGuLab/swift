# How to Run QC Swift
## Dependencies

  1. swift environment and installation (details can be found at Kitty's notes)
    a. Note: install it at the home directory
  2. python3 installation
    a. along with pip3, numpy, opencv-python
  3. bowtie installation
    a. details can be found here (http://bioconda.github.io/recipes/bowtie2/README.html)\
    b. after installation, build bowtie with
      'bowtie-build phix_nc001422.fa phix_nc001422.fa'
## Preparation

  1. make sure swift is located at the home directory
  2. make a directory at home directory using the following command
    mkdir ~/swift_results
  3. make sure bowtie build file and results are in ~/swift_results directory
  4. make sure the data is stored in this correct format:
          data_folder_name
                |
             Images
                |
              L004
                |
      C1.1 C2.1 C3.1 .... Cn.1
        |
    s_4_0_a.tif s_4_0_c.tif ...
    s_4_1_a.tif s_4_0_c.tif ...
    ... (where 1 is fov)
    ...
## Run
#### Simply do the same as normal runswifttile, but change runswifttile to new_runswift.sh
Here is an example(if you are in swift folder already):
  ./new_runswift.sh ~/data/PhiX174_UMD_HiSeq_201305/ 4 1 test-run
Note that '~/data/PhiX...' is the location of the data
          1 is the fov
          test-run is the name of this run (could be any string you want)

# Results
All results will be stored in ~/swift_results/[name of the run]/
