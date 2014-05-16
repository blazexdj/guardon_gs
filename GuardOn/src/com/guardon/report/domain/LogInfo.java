package com.guardon.report.domain;

public class LogInfo {
	private String userName;
	private String userDepartment;
	private String userLevel;
	private String userType;
	private String loginTime;
	private String logoutTime;
	private String userId;
	private int requestCount;
	private int approvalCount;
	private int rejectCount;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserDepartment() {
		return userDepartment;
	}
	public void setUserDepartment(String userDepartment) {
		this.userDepartment = userDepartment;
	}
	public String getUserLevel() {
		return userLevel;
	}
	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}	
	public String getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}
	public String getLogoutTime() {
		return logoutTime;
	}
	public void setLogoutTime(String logoutTime) {
		this.logoutTime = logoutTime;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getRequestCount() {
		return requestCount;
	}
	public void setRequestCount(int requestCount) {
		this.requestCount = requestCount;
	}
	public int getApprovalCount() {
		return approvalCount;
	}
	public void setApprovalCount(int approvalCount) {
		this.approvalCount = approvalCount;
	}
	public int getRejectCount() {
		return rejectCount;
	}
	public void setRejectCount(int rejectCount) {
		this.rejectCount = rejectCount;
	}

}
