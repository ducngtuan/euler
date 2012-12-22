val target = 2000000

/**
 * For a row size n, there are:
 * - 1 n-block bar (a bar size n x 1)
 * - 2 (n-1)-block bars (1 starts at index 0, 1 starts at index 1)
 * - 3 (n-2)-block bars...
 * that is a total of (1 + 2 + ... + n) = n * (n + 1) / 2
 * For a grid size m x n, there are total m * (m + 1) / 2 * n * (n + 1) / 2 rectangles
 */
def count_rec(x: Int, y: Int) = x * (x + 1) * y * (y + 1) / 4

var x = 2000
var y = 1
var diff = Int.MaxValue
var area = 0
while (x >= y) {
  val recs = count_rec(x, y)
  if (diff > (recs - target).abs) {
    diff = (recs - target).abs
    area = x * y
  }
  if (recs > target) x -= 1
  else y += 1
}
println(area)