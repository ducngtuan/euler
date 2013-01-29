sum1 = sum(range(101))
sum2 = sum(i**2 for i in range(101))
print(sum1**2 - sum2)