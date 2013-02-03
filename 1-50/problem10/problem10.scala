def step(start: Long, by: Long): Stream[Long] = start #:: step(start + by, by)
val primes: Stream[Long] = 2L #:: step(3L, 2).filter(x => primes.takeWhile(_ <= math.sqrt(x)).forall(x % _ != 0))

println(primes.takeWhile(_ < 2000000).sum) // 142913828922