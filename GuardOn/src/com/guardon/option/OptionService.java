package com.guardon.option;

import com.guardon.option.domain.Option;

public interface OptionService {
	
	public void updateOption(Option option) throws Exception;
	public int getPwdLength() throws Exception;
	public int getAutoLogout() throws Exception;
	public int getOtpTimeLimit() throws Exception;
	public int getLoginFailedCount() throws Exception;
	public String getPwdComplexity() throws Exception;

}
