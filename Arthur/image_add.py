# this program combined all fovs of the first cycle
# and print out that image

import cv2
import matplotlib
import numpy as np

for fov in range(0, 22):
# for i in range(1, 22):
    if fov == 8 or fov == 19:
        continue
    # first cycle
    i = 1
    path = '/home/gulab/data/20180701_30cyc_2ndhyber_ALL_Hiseq_V4_Kit/Images/L004/C' + str(i) + '.1/'
    a = cv2.imread(path + 's_4_' + str(fov) + '_a.tif', cv2.IMREAD_ANYDEPTH)
    t = cv2.imread(path + 's_4_' + str(fov) + '_t.tif', cv2.IMREAD_ANYDEPTH)
    g = cv2.imread(path + 's_4_' + str(fov) + '_g.tif', cv2.IMREAD_ANYDEPTH)
    c = cv2.imread(path + 's_4_' + str(fov) + '_c.tif', cv2.IMREAD_ANYDEPTH)
    combined = cv2.add(cv2.add(a, c), cv2.add(t, g))
    combined = np.uint16(combined)
    cv2.imwrite('combined_fov_' + str(fov) + '.tif', combined)
