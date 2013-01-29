def is_palin(x):
    s = str(x)
    return s == s[::-1]

a = (i * j for i in range(990, 100, -11)
           for j in range(999, 100, -1))
print(max(filter(is_palin, a)))