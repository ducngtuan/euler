import itertools

primes = [2]
count = 1
n = 3
while count < 10001:
    m = n ** 0.5 + 1
    if all(n % x != 0 for x in itertools.takewhile(lambda i: i < m, primes)):
        primes.append(n)
        count += 1
    n += 2
print(primes[-1])