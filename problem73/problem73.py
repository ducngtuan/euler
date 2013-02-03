import fractions
print(len(list(1 for d in range (5, 12001)
                 for n in range(d//3 + 1, (d-1)//2 + 1)
                 if fractions.gcd(n, d) == 1)))