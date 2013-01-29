import itertools

def fib():
    a, b = 0, 1
    while True:
        yield a
        a, b = b, a + b

is_even = lambda x: x % 2 == 0
nums = itertools.takewhile(lambda x: x < 4000000, fib())
print(sum(filter(is_even, nums)))