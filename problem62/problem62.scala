val maps = new collection.mutable.HashMap[String, List[BigInt]]
var i: BigInt = 100
while (true) {
  val cube = i * i * i
  val key = cube.toString.split("").sorted.mkString
  val values = i :: maps.getOrElse(key, Nil)
  if (values.length == 5) {
    val x = values.min
    println(x, x*x*x)
    System.exit(0)
  }
  maps(key) = values
  i += 1
}