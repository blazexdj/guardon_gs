package test;
import java.util.Scanner;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;


public class schedulerTest {
	
	
	public static String firstOtp() throws Exception{
		  
		 boolean pwdEnhancement=true;
		 
		 
		 if(pwdEnhancement==false){
			 String otp;
			 otp = UUID.randomUUID().toString().replace("-", "").substring(0,10);
			 System.out.println(otp);
			 return otp;
		 }
		 else{
			 int pwdLevel=10;
			 String otp="";
			 for (int i = 0; i <pwdLevel ; i++) {
				 String buf;
				 buf = ""+(char)((Math.random() * 94) + 33);
				 otp = otp+buf;
				}
			 return otp;
			} 
		 }

		
	public static void main(String[] args) throws Exception{
		Scanner sc = new Scanner(System.in);
		String command = "";
		String password = "";
		int modifyTime = 5; // x초 후
		
		while(true){
			System.out.println("1. INSERT");
			System.out.println("2. UPDATE");
			System.out.println("*. EXIT");
			System.out.print("(1/2/*) ? \n");
			command = sc.nextLine();
			System.out.print("\n");
			
			MakeOTP makeOTP = new MakeOTP();
			Timer timer = new Timer();
			
			if(command.equals("1")){
				password = firstOtp();
				System.out.println(password);
				timer.schedule(makeOTP, modifyTime*1000);
			} else if(command.equals("2")){
				timer.schedule(makeOTP, modifyTime*1000);
			} else {
				break;
			}
		}
		System.out.println("끝");
	}

}

class MakeOTP extends TimerTask {
	@Override
	public void run() {

				 int pwdLevel=10;
				 String otp="";
				 for (int i = 0; i <pwdLevel ; i++) {
					 String buf;
					 buf = ""+(char)((Math.random() * 94) + 33);
					 otp = otp+buf;
				 }
				 System.out.println(otp);
			 /*
		System.out.println("makeOTP() 함수 실행");
		System.out.println("1. DB 검사");
		System.out.println("2. if");
		System.out.println("2-1. 시간 만료되었으면 비밀번호 변경하고, 다음 만료 시간 체크하여 makeOTP() 함수 실행");
		System.out.println("2-2. 만료된 비밀번호가 없으면 다음 만료시간 체크하여 makeOTP() 함수 실행");
		
		*/
	}
}
