package com.guardon.option.impl;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Repository;

import com.guardon.option.OptionDAO;
import com.guardon.option.domain.Option;
import com.ibatis.sqlmap.client.SqlMapClient;

@Repository("optionDAO")
public class OptionDAOImpl implements OptionDAO{
	
	 @Inject
	 @Named("sqlMapClient")
	 SqlMapClient sqlMapClient;

	@Override
	public void updateOption(Option option) throws Exception {
		
		sqlMapClient.update("Option.updateOption", option);
	}

	@Override
	public int getPwdLength() throws Exception {
		return (int) sqlMapClient.queryForObject("Option.getPwdLength");
	}

	@Override
	public int getAutoLogout() throws Exception {
		return (int) sqlMapClient.queryForObject("Option.getAutoLogout");
	}

	@Override
	public int getOtpTimeLimit() throws Exception {
		return (int) sqlMapClient.queryForObject("Option.getOtpTimeLimit");
	}

	@Override
	public int getLoginFailedCount() throws Exception {
		return (int) sqlMapClient.queryForObject("Option.getOtpTimeLimit");
	}

	@Override
	public String getPwdComplexity() throws Exception {
		return sqlMapClient.queryForList("Option.getPwdComplexity").toString();
	}


}
