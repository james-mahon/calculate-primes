from math import sqrt
from math import ceil
print "What value?"
valid = True
ask = raw_input()
ask = int(ask)
max = int(ceil(sqrt(ask)))
for i in range(2, max):
	if ask % i == 0:
		print "Nope"
		valid = False
		break
if valid:
	print "Yup"