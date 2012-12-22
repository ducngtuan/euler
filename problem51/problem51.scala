/**
 * @see http://www.mathblog.dk/project-euler-51-eight-prime-family/
 */

def isPrime(n: Int) = n > 1 && primes.takeWhile(_ <= math.sqrt(n)).forall(n % _ != 0)
val primes: Stream[Int] = 2 #:: Stream.from(3, 2).filter(isPrime(_))

/** Generate all patterns that always end in "1" */
def patterns(length: Int, repeatLength: Int) = 
  ("0" * repeatLength + "1" * (length - repeatLength - 1)).permutations.map(_ + "1").toList

def fills(pattern: String, number: Int): String =
  pattern.foldLeft(("", number.toString)) { case ((s, i), c) =>
    if (c == '0') (s + "x", i)
    else (s + i.head, i.tail)
  }._1
// println(fills("110010", 456)) // > 45xx6x

def generateNumber(pattern: String, repeatDigit: Char) = pattern.replace('x', repeatDigit).toInt
// println(generateNumber("45xx6x", 3)) // > 453363

val ps = patterns(6, 3)
val digits = (0 to 9).toList.map(_.toString.charAt(0)).splitAt(3)
val filledPatterns = (101 until 1000 by 2).par.flatMap(n => ps.par.map(p => fills(p, n)))

val firstFilter = filledPatterns.map { p =>
  val nums = for {
    r <- digits._1
    if !(r == '0' && p.startsWith("x"))
    val num = generateNumber(p, r)
    if isPrime(num)
  } yield num
  (p, nums)
}.filter(_._2.length > 0)

val secondFilter = firstFilter.map { case (p, l) =>
  val nums = for {
    r <- digits._2
    val num = generateNumber(p, r)
    if isPrime(num)
  } yield num
  (p, l ::: nums)
}.filter(_._2.length == 8)

println(secondFilter)