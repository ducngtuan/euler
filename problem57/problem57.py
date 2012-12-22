# from itertools import starmap
from math import log10

# def expansions(n):
# 	num, den = 2, 1
# 	for _ in xrange(n):
# 		yield num+den, num
# 		num, den = 2*num + den, num
# def ndig(n):
# 	return int(log10(n) + 1)
# 
# print sum(starmap(lambda num, den: ndig(num) > ndig(den), expansions(1000)))
a, b = 2, 1
count = 0
for _ in xrange(1000):
	if int(log10(a+b)) > int(log10(a)):
		count += 1
	a, b = b+2*a, a

print count