package com.guardon.log;

import com.guardon.log.domain.Log;

public interface LogDAO {

	public void setLoginTime(Log log) throws Exception;

	public void setLogoutTime(Log log) throws Exception;

}
