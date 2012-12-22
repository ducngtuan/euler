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

val grids = for {
  x <- 1 to 100
  y <- x to 100
} yield (x, y, (count_rec(x, y) - target).abs)

val (x, y, diff) = grids.minBy(_._3)
println(x * y)