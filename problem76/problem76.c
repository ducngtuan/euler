#include <stdio.h>

int count(int n, int m) {
  if (n == 0) return 1;
  if (n < 0) return 0;
  if (m <= 0 && n >= 1) return 0;
  
  return count(n, m-1) + count(n-m, m);
}

int main(int argc, char** argv) {
  int c = count(100, 99);
  printf("Count = %d", c);
  
  return 0;
}

// run time: 24.76 sec!