package com.guardon.log.domain;

public class Log {
	
	private String userId;
	private String loginTime;
	private String logoutTime;
	private int requestCount;
	private int approvalCount;
	private int rejectCount;
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
