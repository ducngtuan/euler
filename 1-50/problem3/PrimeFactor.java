import java.math.BigInteger;
class PrimeFactor {
	public static void main(String[] args) {
		BigInteger p = new BigInteger("600851475143");
		BigInteger n = new BigInteger("2");
		while (p.compareTo(BigInteger.ONE) > 0) {
			if (p.mod(n).equals(BigInteger.ZERO)) p = p.divide(n);
			n = n.add(BigInteger.ONE);
		}
		System.out.println(n.subtract(BigInteger.ONE).toString());
	}
}
