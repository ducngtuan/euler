from math import log

input
f = open('base_exp.txt', 'r')
input = [line.strip().split(',') for line in f]
input = [[float(x[0]), float(x[1])] for x in input]

max, line = input[0], 0
for i, x in enumerate(input):
	if max[1]*log(max[0]) < x[1]*log(x[0]):
		max, line = x, i

print max, line