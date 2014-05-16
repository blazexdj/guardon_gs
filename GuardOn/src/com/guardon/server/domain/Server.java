package com.guardon.server.domain;

public class Server {
	private String serverName;
	private String ipAddress;
	private String serverDesc; //서버설명
	private String serverId; // 부여받은 해당서버 비밀번호 변경가능 계정아이디
	private String serverPwd;// 부여받은 해당서버 비밀번호 변경가능 계정비밀번호
	private String serverType;//DB서버 종류
	private String connectType; // 일반 네트워크 장비 등의 통신 규격(통신종류)
	private String pingCheck;
	private String serverOS;
	private String port;
	private String dbName;
	private String workflowName;
	
	
	public String getWorkflowName() {
		return workflowName;
	}
	public void setWorkflowName(String workflowName) {
		this.workflowName = workflowName;
	}
	public String getDbName() {
		return dbName;
	}
	public void setDbName(String dbName) {
		this.dbName = dbName;
	}
	public String getPort() {
		return port;
	}
	public void setPort(String port) {
		this.port = port;
	}
	public String getServerOS() {
		return serverOS;
	}
	public void setServerOS(String serverOS) {
		this.serverOS = serverOS;
	}
	public String getPingCheck() {
		return pingCheck;
	}
	public void setPingCheck(String pingCheck) {
		this.pingCheck = pingCheck;
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
	public String getServerDesc() {
		return serverDesc;
	}
	public void setServerDesc(String serverDesc) {
		this.serverDesc = serverDesc;
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
	public String getServerType() {
		return serverType;
	}
	public void setServerType(String serverType) {
		this.serverType = serverType;
	}
	public String getConnectType() {
		return connectType;
	}
	public void setConnectType(String connectType) {
		this.connectType = connectType;
	}
	
	
}
