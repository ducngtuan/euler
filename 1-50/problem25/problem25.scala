val max = BigInt("1" + "0" * 999)
val fib: Stream[BigInt] = Stream[BigInt](1, 1) #::: fib.zip(fib.tail).map(x => x._1 + x._2)
println(fib.takeWhile(_ < max).length + 1)