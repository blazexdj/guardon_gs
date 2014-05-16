package com.guardon.log.impl;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Repository;

import com.guardon.log.LogDAO;
import com.guardon.log.domain.Log;
import com.ibatis.sqlmap.client.SqlMapClient;

@Repository("logDAO")
public class LogDAOImpl implements LogDAO{

	@Inject
	@Named("sqlMapClient")
	SqlMapClient sqlMapClient;

	@Override
	public void setLoginTime(Log log) throws Exception {
		sqlMapClient.insert("Log.setLoginTime", log);
	}

	@Override
	public void setLogoutTime(Log log) throws Exception {
		sqlMapClient.update("Log.setLogoutTime", log);
	}

}
