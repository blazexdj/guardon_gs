package test;

public class tryCatchTest {

	public int tryTest() {
		String str = "abcd";

		try {
			if (str.equals("abcd"))
				return 0;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			System.out.println(str);
		}
		return 1;
	}

	public static void main(String[] args) {
		tryCatchTest t = new tryCatchTest();
		System.out.println(t.tryTest());

	}

}
