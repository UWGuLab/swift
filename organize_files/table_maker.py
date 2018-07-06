import xlsxwriter
import fileinput

workbook = xlsxwriter.Workbook('quick_report_table.xlsx')
worksheet = workbook.add_worksheet()

items = (['FOV',
          'Total Number of Clusters Before Base Calls',
          'Cluster Density Before Base Calls',
          'Total Number of Clusters After Base Calls',
          'Cluster Density After Base Calls',
          'Cluster Survival Rate',
          'Pass Purity Filter rate',
          'Avg. Sequence score',
          'Standard Deviation of Sequence Scores'])

fov = 0
for i in items:
    worksheet.write(0, items.index(i), i)
for i in range(0, 21):
    if i == 8 or i==19:
        continue
    worksheet.write(i+1, 0, i)
    with open ("../quick_reports/Quick_Reports_new_4_channel_FOV_" + str(i) + ".txt", 'r') as f:
        read_data = f.readlines()
        for line in read_data:
            line = line.strip()
            columns = line.split(":")
            if len(columns) > 1:
                columns[0] = columns[0].strip()
                columns[1] = columns[1].strip()
                if items.count(columns[0]) != 0:
                    index = items.index(columns[0])
                    worksheet.write(i+1, index, columns[1])
workbook.close()
