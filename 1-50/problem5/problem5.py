def gcd(a, b):
    if a == 0: return b

    while b != 0:
        a, b = b, a % b
    return a

def lcm(a, b):
    return a // gcd(a, b) * b

r = 1
for x in range(2, 20):
    r = lcm(r, x)
print(r)