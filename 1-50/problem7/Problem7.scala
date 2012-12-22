val primes = scala.collection.mutable.ListBuffer(2)
var count = 1
var p = 3

while (count < 10001) {
    var isPrime = true
    var max = math.sqrt(p)
    var iter = primes.iterator
    var i = 0
    while (iter.hasNext && isPrime && max > i) {
        i = iter.next
        if (p % i == 0) isPrime = false
    }
    if (isPrime) {
        primes.append(p)
        count += 1
    }
    p += 2
}
println(primes.last)