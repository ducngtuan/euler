#include <stdio.h>
#include <math.h>

int isPrime(int n) {
  if (n < 2) return 0;
  if (n == 2) return 1;
  if (n%2 == 0) return 0;
  int i = 0;
  int max = sqrt(n);
  for (i = 3; i <= max; i += 2)
    if (n%i == 0) return 0;

  return 1;
}

int main(int argc, char** argv) {
  int count = 0;
  int n = 2;
  while (count < 10001) {
    if (isPrime(n) == 1) count++;
    n++;
  }
  printf("%d\n", --n);
  return 0;
}
