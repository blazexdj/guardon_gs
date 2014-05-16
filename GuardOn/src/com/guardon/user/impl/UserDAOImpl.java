package com.guardon.user.impl;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Repository;

import com.guardon.user.UserDAO;
import com.guardon.user.domain.User;
import com.ibatis.sqlmap.client.SqlMapClient;


@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

 @Inject
 @Named("sqlMapClient")
 SqlMapClient sqlMapClient;
 
 
 public User getNorUser(String userId) throws Exception {
  return (User)sqlMapClient.queryForObject("User.getNorUser", userId);
 }
 
 public User getAdminUser(String userId) throws Exception {
  return (User)sqlMapClient.queryForObject("User.getAdminUser", userId);
 }


 @Override
 public void insertUser(User user) throws Exception {
  sqlMapClient.insert("User.insertUser", user);
 }
 
 @Override
 public User getUserBasicInfo(String userId) throws Exception {
  return (User)sqlMapClient.queryForObject("User.getUserBasicInfo", userId);
 }

 public String getUserId(String userId) throws Exception {
  return sqlMapClient.queryForObject("User.getUserId", userId).toString();
 }
 

 @Override
 public void updateUser(User user) throws Exception {

  sqlMapClient.update("User.updateUser", user);
 }

 @Override
 public String getUserPwd(String userId) throws Exception {
  return sqlMapClient.queryForObject("User.getUserPwd", userId).toString();
 }

 @Override
 public String getUserDepartment(String userId) throws Exception {
  return sqlMapClient.queryForObject("User.getUserDepartment", userId).toString();
 }

 @Override
 public String getUserType(String userId) throws Exception {
  return sqlMapClient.queryForObject("User.getUserType", userId).toString();
 }

 @Override
 public String getUserName(String userId) throws Exception {
  return sqlMapClient.queryForObject("User.getUserName", userId).toString();
 }

@Override
public ArrayList<User> getUserList(int page) throws Exception {
	return (ArrayList<User>)sqlMapClient.queryForList("User.getUserList", page);
}

@Override
public ArrayList<User> getWfUserList(int page) throws Exception {
	return (ArrayList<User>)sqlMapClient.queryForList("User.getWfUserList", page);
}

@Override
public void setActive(String userId) throws Exception {
	sqlMapClient.update("User.setActive", userId);
}

@Override
public void setDeactive(String userId) throws Exception {
	sqlMapClient.update("User.setDeactive", userId);
}

@Override
public boolean isActive(String userId) throws Exception {
	return (boolean)sqlMapClient.queryForObject("User.isActive", userId);
}


 
} 
