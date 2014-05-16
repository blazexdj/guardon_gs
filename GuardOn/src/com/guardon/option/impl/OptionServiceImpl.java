package com.guardon.option.impl;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Service;

import com.guardon.option.OptionDAO;
import com.guardon.option.OptionService;
import com.guardon.option.domain.Option;

@Service("optionService")
public class OptionServiceImpl implements OptionService{
	
	@Inject
	@Named("optionDAO")
	OptionDAO optionDAO;

	@Override
	public void updateOption(Option option) throws Exception {
		optionDAO.updateOption(option);
	}

	@Override
	public int getPwdLength() throws Exception {
		return optionDAO.getPwdLength();
	}

	@Override
	public int getAutoLogout() throws Exception {
		return optionDAO.getAutoLogout();
	}

	@Override
	public int getOtpTimeLimit() throws Exception {
		return optionDAO.getOtpTimeLimit();
	}

	@Override
	public int getLoginFailedCount() throws Exception {
		return optionDAO.getLoginFailedCount();
	}

	@Override
	public String getPwdComplexity() throws Exception {
		return optionDAO.getPwdComplexity();
	}

}
