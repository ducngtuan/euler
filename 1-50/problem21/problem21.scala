def divisors_sum(n: Int) = {
  val sqrt = math.sqrt(n).toInt
  1 + (2 to sqrt).filter(n % _ == 0).map(x => x + n / x).sum
}

val sums = (1 to 9999).map(x => (x, divisors_sum(x))).toMap
println((1 to 9999).filter(x => sums(x) < 10000 && sums(sums(x)) == x && sums(x) != x).map(sums(_)).sum)