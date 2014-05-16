package test;

public class replaceTest {

	public static void main(String[] args) {
		String otp = "/_08?+<?S\"@()'`";
		System.out.println(otp);


		if (otp.contains("@"))
			otp = otp.replaceAll("@", "\\$");
		if (otp.contains("/"))
			otp = otp.replaceAll("/", "#");
		if (otp.contains("\""))
			otp = otp.replaceAll("\"", "_");
		if (otp.contains("<"))
			otp = otp.replaceAll("<", "#");
		if (otp.contains("'"))
			otp = otp.replaceAll("'", "#");
		if (otp.contains("("))
			otp = otp.replaceAll("\\(", "%");
		if (otp.contains(")"))
			otp = otp.replaceAll("\\)", "!");

		System.out.println(otp);

	}

}
