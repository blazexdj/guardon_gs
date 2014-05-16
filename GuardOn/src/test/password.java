package test;

public class password {
	public static void main(String[] args) {
		int pwdLevel=10;
		String pwd="";
		for (int i = 0; i <pwdLevel ; i++) {
			String buf;
			buf = ""+(char)((Math.random() * 94) + 33);
			pwd = pwd+buf;
		}
		System.out.println(pwd);
	}

}
