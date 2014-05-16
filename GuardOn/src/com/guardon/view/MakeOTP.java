package com.guardon.view;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.TimerTask;
import java.sql.Statement;

public class MakeOTP extends TimerTask {

	UserController uc = new UserController();
	private String userOtp;
	private String serverName;
	private String ipAddress;
	private String serverId;
	private String serverPwd;
	private String connectId;
	private String dbName;
	private String connectType;
	private String serverOS;
	private String port;

	
	public String getPort() {
		return port;
	}

	public void setPort(String port) {
		this.port = port;
	}

	public String getUserOtp() {
		return userOtp;
	}

	public void setUserOtp(String userOtp) {
		this.userOtp = userOtp;
	}

	public String getServerName() {
		return serverName;
	}

	public void setServerName(String serverName) {
		this.serverName = serverName;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getServerId() {
		return serverId;
	}

	public void setServerId(String serverId) {
		this.serverId = serverId;
	}

	public String getServerPwd() {
		return serverPwd;
	}

	public void setServerPwd(String serverPwd) {
		this.serverPwd = serverPwd;
	}

	public String getDbName() {
		return dbName;
	}

	public void setDbName(String dbName) {
		this.dbName = dbName;
	}

	public String getConnectType() {
		return connectType;
	}

	public void setConnectType(String connectType) {
		this.connectType = connectType;
	}

	public String getConnectId() {
		return connectId;
	}

	public void setConnectId(String connectId) {
		this.connectId = connectId;
	}

	public String getServerOS() {
		return serverOS;
	}

	public void setServerOS(String serverOS) {
		this.serverOS = serverOS;
	}

	public void run() {

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		TelnetSample telnet = new TelnetSample();	
		
		String query;

		userOtp = firstOtp();
		System.out.println(userOtp);
		System.out.println(connectId);
		try {
			switch (connectType) {

			case "oracle":

				query = "alter user "+connectId + " identified by \""+ userOtp + "\"";;														
				
				Class.forName("oracle.jdbc.driver.OracleDriver");												
				
				con = DriverManager.getConnection("jdbc:oracle:thin:@"+ipAddress+":"+port+":orcl", serverId, serverPwd);
								
				stmt = (Statement)con.createStatement();
				stmt.executeUpdate(query);			
				
				stmt.close();
				con.close();
				break;

			case "mssql":
				
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");		
				
				query = "SP_PASSWORD NULL," + "'" + userOtp + "', '"+ connectId + "'";
	
				con = DriverManager.getConnection("jdbc:sqlserver://"+ipAddress+":"+port, serverId, serverPwd);								
	
				stmt = con.createStatement();				
			
				stmt.executeUpdate(query);						
			
				stmt.close();
				con.close();
				break;

			case "mysql":
				
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://" + ipAddress
						+ "/mysql", serverId, serverPwd);

				query = "update user set password=password('" + userOtp + "') where user='" + connectId + "';";

				stmt = (Statement) con.createStatement();
				stmt.executeUpdate(query);
				stmt.executeUpdate("flush privileges");
				
				stmt.close();
				con.close();

				break;

			case "telnet":				
				if (serverOS.equals("windows")) {
									
					telnet.setHostPrompt(">");
					telnet.connect(ipAddress, serverId, serverPwd);
					telnet.changePwd(connectId, "1234", userOtp);
					telnet.disconnect();
					System.out.println(userOtp);
					break;
				} else if (serverOS == "linux") {

				}
			default:
				break;
			}
			uc.setServerLock(false);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			if(rs!=null)try{rs.close(); System.out.println("rs closed!!");} catch(Exception e){}
			if(stmt!=null)try{stmt.close(); System.out.println("stmt closed!!");} catch(Exception e){}
			if(con!=null)try{con.close(); System.out.println("con closed!!");} catch(Exception e){}	
			if(telnet.isConnected())try{telnet.disconnect(); System.out.println("telnet disconnect!!");} catch(Exception e){};
		 }	  
	}

	public String firstOtp() {

		int pwdLevel = 10;
		String otp = "";
		for (int i = 0; i < pwdLevel; i++) {
			String buf;
			buf = "" + (char) ((Math.random() * 94) + 33);
			otp = otp + buf;
		}
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
		return otp;

	}

}
