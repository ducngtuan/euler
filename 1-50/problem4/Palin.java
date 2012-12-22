class Palin {
	public static boolean isPalindrom(int n) {
		char[] s = new Integer(n).toString().toCharArray();
		int start = 0, end = s.length - 1;
		while (start < end && s[start] == s[end]) {
			start++;
			end--;
		}
		return (start >= end);
	}
	
	public static void main(String[] args) {
		int max = 0;
		for (int i = 990; i > 100; i -= 11)
			for (int j = 999; j >= 100; j--) {
				int n = i*j;
				if (isPalindrom(n) && n > max) max = n;
			}
		
		System.out.println(max);
	}
}