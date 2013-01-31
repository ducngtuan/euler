max = int('1' + '0' * 999)
a, b, count = 1, 1, 2
while b < max:
    a, b, count = b, a + b, count + 1
print(count)