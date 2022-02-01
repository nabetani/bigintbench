import java.math.BigInteger;

class BigIntBench {
    static final long N = 10000;
    static final BigInteger BN = BigInteger.valueOf(N);
    static final BigInteger BDIV = new BigInteger("7");
    static final BigInteger BMOD = new BigInteger("6074001001");

    public static void main(String[] args) {
        long r = 0;
        long m = 0;
        BigInteger bx = BigInteger.valueOf(1);
        for (int x = 1; x < N; ++x, bx=bx.add(BigInteger.ONE)) {
            BigInteger bn = BN//
                    .subtract(bx)//
                    .pow(x)//
                    .divide(BDIV)//
                    .mod(BMOD);
            long n = bn.longValue();
            if (m < n) {
                r = x;
                m = n;
            }
        }
        System.out.println(r);
    }
}