#include <stdio.h>

int check(int a, int b) {
	int c = a*b;
	long s = c;
	while (a > 0) {
		s = s*10 + a%10;
		a /= 10;
	}
	while (b > 0) {
		s = s*10 + b%10;
		b /= 10;
	}
	int buff[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
	if (s < 100000000 || s > 987654321)
		return -1;
	
	while (s > 0) {
		int digit = s % 10;
		s /= 10;
		if (digit == 0 || buff[digit] == 1)
			return -1;
		else
			buff[digit] = 1;
	}
	
	return c;
}

int main(int argc, char** argv) {
	int i = 0, j = 0, k = 0, count = 0;
	int products[100];
	
	for (i = 1; i < 10; i++)
		for (j = 1000; j < 10000; j++) {
			int c = check(i, j);
			if (c != -1) {
				int found = 0;
				for (k = 0; k < count; k++)
					if (products[k] == c)
						found = 1;
				if (found == 0) {
					products[count] = c;
					count++;
				}
			}
		}
	
	for (i = 10; i < 100; i++)
		for (j = 100; j < 1000; j++) {
			int c = check(i, j);
			if (c != -1) {
				int found = 0;
				for (k = 0; k < count; k++)
					if (products[k] == c) {
						found = 1;
						break;
					}
				if (found == 0) {
					products[count] = c;
					count++;
				}
			}
		}
	
	int sum = 0;
	for (i = 0; i < count; i++)
		sum += products[i];
	printf("Sum: %d\n", sum);
	return 0;
}