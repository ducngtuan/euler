def generate(n, acc=0):
    if n == 0:
        return acc
    if n % 2 == 1:
        return generate(n - 1, n + acc)

    return acc + n * (n + 1) / 2

def divisors_count(n):
    sqrt = int(n**0.5)
    count = len([x for x in range(1, sqrt) if n % x == 0]) * 2
    if sqrt * sqrt == n: count +=1

    return count

i = 1
while divisors_count(generate(i)) <= 500: i += 1
print("%d: %d" % (i, generate(i))) # 12375 - 76576500