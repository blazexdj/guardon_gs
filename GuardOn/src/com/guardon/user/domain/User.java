package com.guardon.user.domain;

import java.sql.Timestamp;
import java.util.Date;

public class User {
 // Field

 private String userId;
 private String userPwd;
 private String userName;
 private String userNick;
 private String userDepartment;
 private String phoneNumber;
 private String userLevel;
 private String companyNumber;
 private Timestamp joinDate;
 private Timestamp userLoginDate = new Timestamp(new Date().getTime());
 private Timestamp userLogoutinDate = new Timestamp(new Date().getTime());
 private Timestamp userGetOptDate = new Timestamp(new Date().getTime());
 private String userLoginYn;
 private boolean active;
 private String userOtp;
 private String outUserCompany;
 private String userType;
 private boolean approval;
 private Timestamp outStartPerDate = new Timestamp(new Date().getTime()); 
 private Timestamp outEndPerDate = new Timestamp(new Date().getTime());
 private Timestamp approvalDate = new Timestamp(new Date().getTime());
 private int loginCount = 0;
 private int approvalCount = 0;
 private String userEmail;
 private String pwdLevel;
 private Timestamp userLogoutDate;
 

 
 public String getCompanyNumber() {
	return companyNumber;
}

public void setCompanyNumber(String companyNumber) {
	this.companyNumber = companyNumber;
}

public String getUserLevel() {
	return userLevel;
}

public void setUserLevel(String userLevel) {
	this.userLevel = userLevel;
}

public Timestamp getUserGetOptDate() {
	return userGetOptDate;
}

public void setUserGetOptDate(Timestamp userGetOptDate) {
	this.userGetOptDate = userGetOptDate;
}

public String getUserEmail() {
	return userEmail;
}

public void setUserEmail(String userEmail) {
	this.userEmail = userEmail;
}

public String getPwdLevel() {
	return pwdLevel;
}

public void setPwdLevel(String pwdLevel) {
	this.pwdLevel = pwdLevel;
}

public Timestamp getUserLogoutDate() {
	return userLogoutDate;
}

public void setUserLogoutDate(Timestamp userLogoutDate) {
	this.userLogoutDate = userLogoutDate;
}

// Constructor
 public User(){
 }
 
 // Method
 public String getUserType() {
  return userType;
 }

 public void setUserType(String userType) {
  this.userType = userType;
 }
 
 public String getApprovalDate() {
  return approvalDate.toString().substring(0, approvalDate.toString().length()-2);
 }

 public void setApprovalDate(Timestamp approvalDate) {
  this.approvalDate = approvalDate;
 }
 
 public boolean isApproval() {
  return approval;
 }

 public void setApproval(boolean approval) {
  this.approval = approval;
 }
 
 public void setOutStartPerDate(Timestamp outStartPerDate) {
  this.outStartPerDate = outStartPerDate;
 }
 
 public String getOutStartPerDate() {
  return outStartPerDate.toString().substring(0, outStartPerDate.toString().length()-2);
 }
 
 public void setOutEndPerDate(Timestamp outEndPerDate) {
  this.outEndPerDate = outEndPerDate;
 }
 
 public String getOutEndPerDate() {
  return outEndPerDate.toString().substring(0, outEndPerDate.toString().length()-2);
 }
 
 public String getOutUserCompany() {
  return outUserCompany;
 }
 public void setOutUserCompany(String outUserCompany) {
  this.outUserCompany = outUserCompany;
 }
 
 public String getUserOtp(){
  return userOtp;
 }
 
 public void setUserOtp(String userOtp){
  this.userOtp = userOtp;
 }
 
 public String getUserId() {
  return userId;
 }

 public void setUserId(String userId) {
  this.userId = userId;
 }

 public String getUserPwd() {
  return userPwd;
 }

 public void setUserPwd(String userPwd) {
  this.userPwd = userPwd;
 }

 public String getUserName() {
  return userName;
 }

 public void setUserName(String userName) {
  this.userName = userName;
 }

 public String getUserNick() {
  return userNick;
 }

 public void setUserNick(String userNick) {
  this.userNick = userNick;
 }

 
 public Timestamp getJoinDate() {
  return joinDate;
 }

 public void setJoinDate(Timestamp joinDate) {
  this.joinDate = joinDate;
 }


 public String getUserLoginDate() {
  return userLoginDate.toString().substring(0, userLoginDate.toString().length()-2);
 }
 
 public String getUserOptDate() {
  return userGetOptDate.toString().substring(0, userGetOptDate.toString().length()-2);
 }

 public void setUserLoginDate(Timestamp userLoginDate) {
  this.userLoginDate = userLoginDate;
 }

 public String getUserLoginYn() {
  return userLoginYn;
 }

 public void setUserLoginYn(String userLoginYn) {
  this.userLoginYn = userLoginYn;
 }

 public boolean isActive() {
  return active;
 }

 public void setActive(boolean active) {
  this.active = active;
 }

 public String getUserDepartment() {
  return userDepartment;
 }

 public void setUserDepartment(String userDepartment) {
  this.userDepartment = userDepartment;
 }


 @Override
 public String toString() {
  StringBuilder builder = new StringBuilder();
  builder.append("User [userId=");
  builder.append(userId);
  builder.append(", userPwd=");
  builder.append(userPwd);
  builder.append(", userName=");
  builder.append(userName);
  builder.append(", userNick=");
  builder.append(userNick);
  builder.append(", userDepartment=");
  builder.append(userDepartment);

  return builder.toString();
 }

public String getPhoneNumber() {
	return phoneNumber;
}

public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}

public int getLoginCount() {
	return loginCount;
}

public void setLoginCount(int loginCount) {
	this.loginCount = loginCount;
}

public int getApprovalCount() {
	return approvalCount;
}

public void setApprovalCount(int approvalCount) {
	this.approvalCount = approvalCount;
}

public Timestamp getUserLogoutinDate() {
	return userLogoutinDate;
}

public void setUserLogoutinDate(Timestamp userLogoutinDate) {
	this.userLogoutinDate = userLogoutinDate;
}


 
 
} // end of class 
