#!/usr/bin/env bash

for i in {0..21}
do
  if [[ i == 8 ]]; then
    continue
  fi
  if [[ i == 19 ]]; then
    continue
  fi
  ./get_pre_barcode_calling_heatmap ../updated_coor/cor_intensity_file.updated_new_4_channel_FOV_${i}
done
