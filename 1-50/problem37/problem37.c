#include <stdio.h>
#include <math.h>

int is_prime(long n) {
	if (n < 2) return -1;
	if (n == 2) return 1;
	if (n % 2 == 0) return -1;
	
	long i = 3;
	while (i <= sqrt(n)) {
		if (n % i == 0) return -1;
		i += 2;
	}
	return 1;
}

int is_truncable(long n) {
	long i = 10;
	while (i < n) {
		if (is_prime(n/i) == -1 ||
			is_prime(n%i) == -1)
			return -1;
		i *= 10;
	}
	return 1;
}

int main() {
	int count = 0;
	long i = 11, sum = 0;
	while (count < 11) {
		if (is_prime(i) == 1) {
			if (is_truncable(i) == 1) {
				sum += i;
				count++;
				printf("%ld\n", i);
			}
		}
		i += 2;
	}
	printf("sum: %ld", sum);
	return 0;
}