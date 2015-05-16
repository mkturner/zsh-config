#!/usr/bin/env python
# coding=UTF-8

import math
import subprocess

p = subprocess.Popen(["ioreg", "-rc", "AppleSmartBattery"], stdout=subprocess.PIPE)
output = p.communicate()[0]

o_max = [l for l in output.splitlines() if b'MaxCapacity' in l][0]
o_cur = [l for l in output.splitlines() if b'CurrentCapacity' in l][0]

b_max = float(o_max.rpartition(b'=')[-1].strip())
b_cur = float(o_cur.rpartition(b'=')[-1].strip())

charge = b_cur / b_max
charge_threshold = int(math.ceil(10 * charge))

# Output

total_slots, slots = 10, []
filled = int(math.ceil(charge_threshold * (total_slots / 10.0))) * u"\u25CF"
empty = (total_slots - len(filled)) * u"\u25CB"

#out = (filled + empty).decode('utf-8')
out = u''.join((filled,empty)).encode('utf8').strip()
import sys

color_green = '%{[32m%}'
color_yellow = '%{[1;33m%}'
color_red = '%{[31m%}'
color_reset = '%{[00m%}'
color_out = (
    color_green if len(filled) > 6
    else color_yellow if len(filled) > 3
    else color_red
)

try: #python 2 code
    out = color_out + out + color_reset
except TypeError: #python 3 code
    out = color_out + out.decode('utf-8','ignore') + color_reset
finally:
    sys.stdout.write(out)


# out = color_out + out.decode('utf-8','ignore') + color_reset
# sys.stdout.buffer.write(out)
