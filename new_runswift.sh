#!/bin/bash

export lane=$2
export tile=$3

export randname=$4

cd ~/swift_results/
# make directory only if that directory doesn't exist
mkdir -p $randname
cd $randname

# TODO: swift used a/t/c/g_images.randname file to intput file name information
# TODO: change this to fit our own use later
ls  $1/Images/L00${lane}/C[1-9].1/s_${lane}_${tile}_a*.tif > a_images.$randname
ls  $1/Images/L00${lane}/C1?.1/s_$[lane]_$[tile]_a*.tif >> a_images.$randname
ls  $1/Images/L00${lane}/C2?.1/s_$[lane]_$[tile]_a*.tif >> a_images.$randname
ls  $1/Images/L00${lane}/C3?.1/s_$[lane]_$[tile]_a*.tif >> a_images.$randname
ls  $1/Images/L00${lane}/C4?.1/s_$[lane]_$[tile]_a*.tif >> a_images.$randname
ls  $1/Images/L00${lane}/C5?.1/s_$[lane]_$[tile]_a*.tif >> a_images.$randname
ls  $1/Images/L00${lane}/C6?.1/s_$[lane]_$[tile]_a*.tif >> a_images.$randname
ls  $1/Images/L00${lane}/C7?.1/s_$[lane]_$[tile]_a*.tif >> a_images.$randname
ls  $1/Images/L00${lane}/C8?.1/s_$[lane]_$[tile]_a*.tif >> a_images.$randname
ls  $1/Images/L00${lane}/C9?.1/s_$[lane]_$[tile]_a*.tif >> a_images.$randname
ls  $1/Images/L00${lane}/C10?.1/s_$[lane]_$[tile]_a*.tif >> a_images.$randname

ls  $1/Images/L00${lane}/C[1-9].1/s_${lane}_${tile}_c*.tif > c_images.$randname
ls  $1/Images/L00${lane}/C1?.1/s_$[lane]_$[tile]_c*.tif >> c_images.$randname
ls  $1/Images/L00${lane}/C2?.1/s_$[lane]_$[tile]_c*.tif >> c_images.$randname
ls  $1/Images/L00${lane}/C3?.1/s_$[lane]_$[tile]_c*.tif >> c_images.$randname
ls  $1/Images/L00${lane}/C4?.1/s_$[lane]_$[tile]_c*.tif >> c_images.$randname
ls  $1/Images/L00${lane}/C5?.1/s_$[lane]_$[tile]_c*.tif >> c_images.$randname
ls  $1/Images/L00${lane}/C6?.1/s_$[lane]_$[tile]_c*.tif >> c_images.$randname
ls  $1/Images/L00${lane}/C7?.1/s_$[lane]_$[tile]_c*.tif >> c_images.$randname
ls  $1/Images/L00${lane}/C8?.1/s_$[lane]_$[tile]_c*.tif >> c_images.$randname
ls  $1/Images/L00${lane}/C9?.1/s_$[lane]_$[tile]_c*.tif >> c_images.$randname
ls  $1/Images/L00${lane}/C10?.1/s_$[lane]_$[tile]_c*.tif >> c_images.$randname

ls  $1/Images/L00${lane}/C[1-9].1/s_${lane}_${tile}_g*.tif > g_images.$randname
ls  $1/Images/L00${lane}/C1?.1/s_$[lane]_$[tile]_g*.tif >> g_images.$randname
ls  $1/Images/L00${lane}/C2?.1/s_$[lane]_$[tile]_g*.tif >> g_images.$randname
ls  $1/Images/L00${lane}/C3?.1/s_$[lane]_$[tile]_g*.tif >> g_images.$randname
ls  $1/Images/L00${lane}/C4?.1/s_$[lane]_$[tile]_g*.tif >> g_images.$randname
ls  $1/Images/L00${lane}/C5?.1/s_$[lane]_$[tile]_g*.tif >> g_images.$randname
ls  $1/Images/L00${lane}/C6?.1/s_$[lane]_$[tile]_g*.tif >> g_images.$randname
ls  $1/Images/L00${lane}/C7?.1/s_$[lane]_$[tile]_g*.tif >> g_images.$randname
ls  $1/Images/L00${lane}/C8?.1/s_$[lane]_$[tile]_g*.tif >> g_images.$randname
ls  $1/Images/L00${lane}/C9?.1/s_$[lane]_$[tile]_g*.tif >> g_images.$randname
ls  $1/Images/L00${lane}/C10?.1/s_$[lane]_$[tile]_g*.tif >> g_images.$randname

ls  $1/Images/L00${lane}/C[1-9].1/s_${lane}_${tile}_t*.tif > t_images.$randname
ls  $1/Images/L00${lane}/C1?.1/s_$[lane]_$[tile]_t*.tif >> t_images.$randname
ls  $1/Images/L00${lane}/C2?.1/s_$[lane]_$[tile]_t*.tif >> t_images.$randname
ls  $1/Images/L00${lane}/C3?.1/s_$[lane]_$[tile]_t*.tif >> t_images.$randname
ls  $1/Images/L00${lane}/C4?.1/s_$[lane]_$[tile]_t*.tif >> t_images.$randname
ls  $1/Images/L00${lane}/C5?.1/s_$[lane]_$[tile]_t*.tif >> t_images.$randname
ls  $1/Images/L00${lane}/C6?.1/s_$[lane]_$[tile]_t*.tif >> t_images.$randname
ls  $1/Images/L00${lane}/C7?.1/s_$[lane]_$[tile]_t*.tif >> t_images.$randname
ls  $1/Images/L00${lane}/C8?.1/s_$[lane]_$[tile]_t*.tif >> t_images.$randname
ls  $1/Images/L00${lane}/C9?.1/s_$[lane]_$[tile]_t*.tif >> t_images.$randname
ls  $1/Images/L00${lane}/C10?.1/s_$[lane]_$[tile]_t*.tif >> t_images.$randname

# --print_intermediate:  print intermediate images (under development)
# --coordinate_maps:     print coordinate maps (no needed for now)
# --corrected_intout cor_intensity_file.$randname
#                        print corrected intensity of clusters (not longer now)

# changed into absolute path, might not work on a different machine
time ~/swift/swift --purity_length 20 --quick_reports 1  --intout intensity_file.$randname  --purity_threshold 0.56 --correlation_reference_cycle 0 --correlation_threshold 0.8 --correlation_use_bases -1 --correlation_threshold_window 10 --threshold 0.9 --threshold_window 3 --phasing_iterations 3 --phasing_window 10 --load_cycle 10 --align_every 50 --correlation_subimages 1 --correlation_subsubimages 1 --correlation_cc_subimage_multiplier 15 --background_subtraction_enabled true --background_subtraction_window 5 --segment_cycles 3 --tag $randname --img-a a_images.$randname --img-c c_images.$randname --img-g g_images.$randname --img-t t_images.$randname --report runreport.$randname --fastq fastq.$randname --ref ./phi.fa --discard_offedge false --optical_duplicates_distance 6 --optical_duplicates_mismatches 8

# create qc_map
python3 ~/swift/Arthur/qc_map.py ./fastq.${randname}.pf ./fastq.${randname}.nonpf ./intensity_file.$randname

# run mismatch analysis
bowtie ~/swift_results/phix_nc001422.fa -q ./fastq.${randname}.pf > mismatch.txt

# summarize the mismatch analysis
python3 ~/swift/Arthur/mismatch_processor.py ./mismatch.txt ./fastq.${randname}.pf
