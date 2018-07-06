import sys
import numpy as np

if len(sys.argv) != 3:
    print("Usage: python3 mismatch_processor.py mismatch.txt fastq.pf")
    sys.exit()
stats = np.zeros([6])
num_clusters = 1.0
tot_match_rate = 0.0
with open(sys.argv[2], 'r') as f:
    lines = f.readlines()
    num_clusters = len(lines) / 4.0
with open(sys.argv[1], 'r') as f:
    lines=f.readlines()
    tot_match = len(lines)
    for line in lines:
        info = line.split(" ")
        num_mismatch = len(info[len(info) - 1].split(","))
        if num_mismatch <= 5:
            stats[num_mismatch - 1] += 1
output = "    {} mismatch: {:10} {:.3f}%\n"
format = '{:40}: {}\n'
with open('mismatch_summary.txt', 'w') as f:
    f.write(format.format('Total Clusters after purity filter', int(num_clusters)))
    f.write(format.format('Total Clusters matched', tot_match))
    mismatch_rate = '{:.3f}%'.format(tot_match * 100 / num_clusters)
    f.write(format.format('Total Match Rate', mismatch_rate))
    f.write('Mismatch Information:\n')
    for i in range(len(stats)):
        percentage = stats[i] / num_clusters * 100
        f.write(output.format(str(i), str(int(stats[i])), percentage))
