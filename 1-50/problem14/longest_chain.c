#include <stdio.h>

int main(int argc, char** argv) {
	unsigned long long i, l, j, max_length = 4, max_start = 1;
	for (i = 2; i < 1000000; i++) {
		j = i;
		l = 1;
		while (j != 1) {
			j = (j%2 == 0) ? j/2 : (j*3 + 1);
			l++;
		}
		if (max_length < l) {
			max_length = l;
			max_start = i;
		}
	}
	
	printf("%lld\n", max_start);
	return 0;
}