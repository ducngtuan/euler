#include <iostream>
using namespace std;

int gcd(int a, int b) {
  if (a == 0) return b;
  if (b == 0) return a;

  while (b != 0) {
    int temp = b;
    b = a%b;
    a = temp;
  }
  return a;
}

int lcm(int a, int b) {
  return a/gcd(a,b)*b;
}

int main(int argc, char** argv) {
  int l = 1;
  for (int i = 2; i <= 20; i++)
    l = lcm(l, i);

  cout << l << endl;
  return 0;
}
