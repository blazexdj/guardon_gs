package com.guardon.request;

import java.util.ArrayList;
import java.util.Map;

import com.guardon.request.domain.Request;

public interface RequestDAO {
	
	public void insertRequest(Request request) throws Exception;
	public String getOtpApproved(Map<String, String> map) throws Exception;
	public ArrayList<Request> getApprovedList(int page) throws Exception;
	public void updateApproved(Map<String, String> map) throws Exception;
	public void updateRejected(Map<String, String> map) throws Exception;
	public ArrayList<Request> getPeriodPwd(Map<String, String> map) throws Exception;
	public ArrayList<Request> getApprovedReq() throws Exception;
	public void updatePassword(Map<String, String> map) throws Exception;
	public String getEndDate(Map<String, String> map) throws Exception;
	public void updateDestructed(Map<String, String> map) throws Exception;
	public void updateExpiration(Map<String, String> map) throws Exception;
	public String checkDuplReq(Map<String, String> map) throws Exception;
	public ArrayList<Request> getExpirePeriodPwdTarget(String today) throws Exception;
	public void expirePeriodPwd(String today) throws Exception;
	public void expireOtpPwd() throws Exception;
}
