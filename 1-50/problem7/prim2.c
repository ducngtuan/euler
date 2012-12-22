#include <stdio.h>
#include <math.h>

int main(int argc, char** argv) {
  int MAX_COUNT = 10000;
  int prime[MAX_COUNT];
  int count = 1;
  prime[0] = 2;
  int next_prime = 2;
  int i = 0;
  int found_next = 1;
  while (count < 10001) {
    found_next = 1;
    next_prime++;
    int max = sqrt(next_prime);
    for (i = 0; i < count && prime[i] <= max; i++) {
      if (next_prime % prime[i] == 0) {
        found_next = -1;
        break;
      }
    }
    if (found_next == 1) {
      prime[count] = next_prime;
      count++;
    }
  }
  
  printf("%d\n", prime[MAX_COUNT]);
  return 0;
}