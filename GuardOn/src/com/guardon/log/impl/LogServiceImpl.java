package com.guardon.log.impl;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Service;

import com.guardon.log.domain.Log;
import com.guardon.log.LogDAO;
import com.guardon.log.LogService;

@Service("logService")
public class LogServiceImpl implements LogService {

	@Inject
	@Named("logDAO")
	LogDAO logDAO;

	@Override
	public void setLoginTime(Log log) throws Exception {
		logDAO.setLoginTime(log);
	}

	@Override
	public void setLogoutTime(Log log) throws Exception {
		logDAO.setLogoutTime(log);
	}

}
