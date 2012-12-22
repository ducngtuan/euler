def gcd(a: Long, b: Long): Long =
  if (a == 0) b
  else gcd(b % a, a)

def lcm(a: Long, b: Long) = a / gcd(a, b) * b

val result = (2 to 20).foldLeft(1L)((a, b) => lcm(a, b))
println(result)
