#include <iostream>
using namespace std;

int main(int argc, char** argv) {
  unsigned long sum = 0, i = 1, j = 2;
  while (j < 4000000) {
    if (j%2 == 0) sum += j;
    j += i;
    i = j - i;
  }

  cout << sum << endl;
  return 0;
}
