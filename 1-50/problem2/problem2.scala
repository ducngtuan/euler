val fibs: Stream[BigInt] =
    BigInt(0) #:: BigInt(1) #:: fibs.zip(fibs.tail).map { n => n._1 + n._2 }
val sum = fibs.takeWhile(_ < 4000000).filter(_ % 2 == 0).sum
println(sum)
