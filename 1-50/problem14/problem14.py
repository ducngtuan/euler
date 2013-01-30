buff = {1: 1}
def chain_length(n):
    if n in buff:
        return buff[n]
    else:
        if n % 2 == 0:
            buff[n] = 1 + chain_length(n // 2)
        else:
            buff[n] = 1 + chain_length(n * 3 + 1)
    return buff[n]

max_start, max_length = 1, 1
for i in range(2, 1000001):
    len = chain_length(i)
    if len > max_length:
        max_length, max_start = len, i

print(max_length, max_start)