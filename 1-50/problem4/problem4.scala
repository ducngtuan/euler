// See Forum
// abccba = 11(9091a + 910b + 100c)
//   => One of 2 factors must be devisible by 11

def isPalindrom(a: Long): Boolean = {
  val s = a.toString
  s == s.reverse
}

val prods = for {
  i <- 990 to 100 by -11
  j <- 999 to 100 by -1
  val n = i*j
  if (isPalindrom(n))
  } yield n

println(prods.max)
