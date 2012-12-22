var n = 600851475143L
var p = 1
while (n > 1) {
  if (n % p == 0) n /= p
  p += 1
}

println(p - 1)
