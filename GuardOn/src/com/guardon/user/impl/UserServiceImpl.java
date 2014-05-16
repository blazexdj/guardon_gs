package com.guardon.user.impl;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Service;

import com.guardon.user.UserDAO;
import com.guardon.user.UserService;
import com.guardon.user.domain.User;

@Service("userService")
public class UserServiceImpl implements UserService {

 @Inject
 @Named("userDAO")
 UserDAO userDAO;
 

 @Override
 public void insertUser(User user) throws Exception {
  userDAO.insertUser(user);
 }
 
 @Override
 public User getUserBasicInfo(String userId) throws Exception {
  return userDAO.getUserBasicInfo(userId);
 }
 
 @Override
 public String getUserId(String userId) throws Exception {
  return userDAO.getUserId(userId).toString();
 }
 
 @Override
 public void updateUser(User user) throws Exception {

  userDAO.updateUser(user);
 }


 @Override
 public String getUserPwd(String userId) throws Exception {
  return userDAO.getUserPwd(userId);
 }

 @Override
 public String getUserDepartment(String userId) throws Exception {
  return userDAO.getUserDepartment(userId);
 }

 @Override
 public String getUserType(String userId) throws Exception {
  return userDAO.getUserType(userId);
 }

 @Override
 public String getUserName(String userId) throws Exception {
  return userDAO.getUserName(userId);
 }

@Override
public ArrayList<User> getUserList(int page) throws Exception {
	return userDAO.getUserList(page);
}

@Override
public ArrayList<User> getWfUserList(int page) throws Exception {
	return userDAO.getWfUserList(page);
}

@Override
public void setActive(String userId) throws Exception {
	userDAO.setActive(userId);
}

@Override
public void setDeactive(String userId) throws Exception {
	userDAO.setDeactive(userId);
}

@Override
public boolean isActive(String userId) throws Exception {
	return userDAO.isActive(userId);
}


 
} 
