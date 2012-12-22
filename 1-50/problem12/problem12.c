#include <stdio.h>
#include <math.h>
unsigned long generate(int n) {
	if (n == 0) return 0;
	if (n % 2 == 1) return n + generate(n-1);
	
	return n/2*(n+1);
}


unsigned long divisors_count(unsigned long n) {
	unsigned long count = 2;
	unsigned long i = 2;
	for (i = 2; i < sqrt(n); i++)
		if (n % i == 0) count += 2;
	return count;
}

int main(int argc, char** argv) {
	int i = 10;
	while (divisors_count(generate(i)) <= 500) i++;
	printf("%d\n", generate(i));
	return 0;
}