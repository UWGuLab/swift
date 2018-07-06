import cv2
import numpy as np
import sys

if len(sys.argv) != 4:
    print("Usage: python3 qc_map.py [fastq.pf] [fastq.nonpf] [intensity_file]")
    sys.exit()
image = np.zeros([1024, 1024, 3], dtype=np.uint8)
# open intensity
with open(sys.argv[3]) as f:
    lines = f.readlines()
    for line in lines:
        if line[0:3] == '1 1':
            titles = line.split(" ")
            x = int(titles[2])
            y = int(titles[3])
            image[y, x] = [255, 0, 0]
img = Image.fromarray(image)
# open fastq.nonpf
with open(sys.argv[2]) as f:
    lines = f.readlines()
    line_num = 4
    for line in lines:
        if line[0] == '@':
            titles=line.split(":")
            if line_num != 4:
                continue
            x = int(titles[len(titles) - 2])
            y = int(titles[len(titles) - 1])
            image[y,x,] = [0, 0, 128]
            line_num=0
        line_num += 1
# open fastq.pf
with open(sys.argv[1]) as f:
    lines = f.readlines()
    line_num = 4
    for line in lines:
        if line[0] == '@':
            titles=line.split(":")
            if line_num != 4:
                continue
            x = int(titles[len(titles) - 2])
            y = int(titles[len(titles) - 1])
            image[y,x,] = [0, 255, 0]
            line_num=0
        line_num += 1
# get project name
fastq = sys.argv[1].split(".")
name = fastq[len(fastq) - 2]
# img.save('qc_map.tif')
cv2.imwrite('qc_map_' + name + '.tif', image)
