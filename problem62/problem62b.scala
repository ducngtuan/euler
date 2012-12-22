val i = collection.immutable.Range.BigInt(1, 10000, 1)
  .groupBy (x => (x * x * x).toString.split("").sorted.mkString)
  .filter { case (a, b) => b.length == 5 }
  .map { case (a, b) => b.min }
  .min

println(i, i * i * i)