primes = [2]
MAX = 2000000
n = 3
while n < MAX:
    m = n ** 0.5 + 1
    is_prime = True
    for p in primes:
        if p > m: break
        if n % p == 0:
            is_prime = False
            break
    if is_prime:
        primes.append(n)
    n += 2
print(sum(primes))