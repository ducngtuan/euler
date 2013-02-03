def generate(n: Long): Long = {
  def _generate(n: Long, acc: Long): Long =
    if (n == 0) 0
    else
      if (n % 2 == 0) acc + n * (n + 1) / 2
      else _generate(n - 1, n + acc)

  _generate(n, 0)
}

def divisors_count(n: Long): Long = {
  val sqrt = math.round(math.sqrt(n))
  val count = (1L until sqrt).count(n % _ == 0) * 2
  
  if (sqrt * sqrt == n) count + 1
  else count
}

var i = 1
while (divisors_count(generate(i)) <= 500) { i += 1 }
println(s"$i: ${generate(i)}")