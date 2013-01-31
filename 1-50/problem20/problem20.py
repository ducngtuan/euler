import operator
import functools
print(sum(map(int, str(functools.reduce(operator.mul, range(1, 101))))))