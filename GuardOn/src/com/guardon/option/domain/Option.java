package com.guardon.option.domain;

public class Option {
	private int pwdLevel;
	private int pwdLength;
	private int otpTimeLimit;
	private int loginFailedCount;
	private String pwdComplexity;
	
	
	public int getPwdLevel() {
		return pwdLevel;
	}
	public void setPwdLevel(int pwdLevel) {
		this.pwdLevel = pwdLevel;
	}
	public int getPwdLength() {
		return pwdLength;
	}
	public void setPwdLength(int pwdLength) {
		this.pwdLength = pwdLength;
	}
	public int getOtpTimeLimit() {
		return otpTimeLimit;
	}
	public void setOtpTimeLimit(int otpTimeLimit) {
		this.otpTimeLimit = otpTimeLimit;
	}
	public int getLoginFailedCount() {
		return loginFailedCount;
	}
	public void setLoginFailedCount(int loginFailedCount) {
		this.loginFailedCount = loginFailedCount;
	}
	public String getPwdComplexity() {
		return pwdComplexity;
	}
	public void setPwdComplexity(String pwdComplexity) {
		this.pwdComplexity = pwdComplexity;
	}
	
	
}
