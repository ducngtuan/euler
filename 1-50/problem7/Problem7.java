import java.util.ArrayList;
import java.util.List;

public class Problem7 {
    public static void main(String[] args) {
        final int MAX_COUNT = 10001;
        List<Long> primes = new ArrayList<Long>(10001);

        int count = 1;
        long next = 3;
        primes.add(2L);
        while (count < MAX_COUNT) {
            boolean isPrime = true;
            long max = (long)Math.sqrt(next);
            for (long i: primes) {
                if (max < i) break;
                if (next % i == 0) {
                    isPrime = false;
                    break;
                }
            }

            if (isPrime) {
                count++;
                primes.add(next);
            }

            next+=2;
        }

        System.out.println(next - 2);
    }
}