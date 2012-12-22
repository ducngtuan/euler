#include <stdio.h>
#include <string.h>

bool isPalindrom(int n) {
  char s[100];
  sprintf(s, "%d", n);

  int start = 0, end = strlen(s) - 1;
  while (start < end && s[start] == s[end]) {
    start++;
    end--;
  }
  return (start >= end);
}
 
int main(int argc, char** argv) {
  int max = 0;
  for (int i = 990; i > 100; i -= 11)
    for (int j = 999; j >= 100; j--) {
      int n = i*j;
      if (isPalindrom(n) && n > max) max = n;
    }

  printf("%d\n", max);
  return 0;
}
