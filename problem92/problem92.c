#include <stdio.h>

int next(int n) {
	int result = 0;
	while (n > 0) {
		result += (n%10) * (n%10);
		n /= 10;
	}
	
	return result;
}

int main() {
	int buffer[600];
	int count = 0;
	
	buffer[1] = 0;
	buffer[89] = 1;
	
	int i = 0;
	for (i = 1; i < 568; i++) {
		int n = i;
		while (n != 1 && n != 89)
			n = next(n);

		if (n == 1)
			buffer[i] = 0;
		else {
			buffer[i] = 1;
			count += 1;
		}
	}
	printf("generated buffer to 600...\n");
	
	for (i = 568; i < 10000000; i++)
		if (buffer[next(i)] == 1)
			count += 1;
	
	printf("%d\n", count);
	return 0;
	
}