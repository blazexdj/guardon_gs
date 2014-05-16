package test;

public class test02Main {

	public static void main(String[] args) {

		String serverIp, userId, currentPwd, newPwd, serverId, serverPwd;

		//serverIp = "211.178.181.67";
		serverIp = "111.111.111.111";
		serverId = "administraor";
		serverPwd = "4321";
		userId = "test";
		newPwd = "1234";
		currentPwd = "";

		TelnetSample telnet = new TelnetSample();

		// When server is based on linux
		// telnet.setHostPrompt("$");

		// When server is based on windows
		telnet.setHostPrompt(">");
		
		try{
		telnet.connect(serverIp, serverId, serverPwd);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		telnet.changePwd(userId, currentPwd, newPwd);
		telnet.disconnect();

	}

}
