package com.guardon.request.impl;

import java.util.ArrayList;
import java.util.Map;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Service;

import com.guardon.request.RequestDAO;
import com.guardon.request.RequestService;
import com.guardon.request.domain.Request;

@Service("requestService")
public class RequestServiceImpl implements RequestService{
	@Inject
	@Named("requestDAO")
	RequestDAO requestDAO;

	@Override
	public void insertRequest(Request request) throws Exception {
		requestDAO.insertRequest(request);
	}

	@Override
	public ArrayList<Request> getApprovedList(int page) throws Exception {
		page = (page-1)*15;
		return requestDAO.getApprovedList(page);
	}

	@Override
	public String getOtpApproved(Map<String, String> map) throws Exception {
		return requestDAO.getOtpApproved(map);
	}

	@Override
	public void updateApproved(Map<String, String> map) throws Exception {
		requestDAO.updateApproved(map);
		
	}

	@Override
	public void updateRejected(Map<String, String> map) throws Exception {
		requestDAO.updateRejected(map);
		
	}

	@Override
	public ArrayList<Request> getPeriodPwd(Map<String, String> map)
			throws Exception {
		return requestDAO.getPeriodPwd(map);
	}
	
	@Override
	public ArrayList<Request> getApprovedReq() throws Exception {
		return requestDAO.getApprovedReq();
	}

	@Override
	public String getEndDate(Map<String, String> map) throws Exception {
		return requestDAO.getEndDate(map);
	}

	@Override
	public void updatePassword(Map<String, String> map) throws Exception {
		requestDAO.updatePassword(map);
		
	}

	@Override
	public void updateDestructed(Map<String, String> map) throws Exception {
		requestDAO.updateDestructed(map);
		
	}

	@Override
	public void updateExpiration(Map<String, String> map) throws Exception {
		requestDAO.updateExpiration(map);
		
	}
	@Override
	public String checkDuplReq(Map<String, String> map) throws Exception {
		return requestDAO.checkDuplReq(map);
	}
	
	@Override
	public ArrayList<Request> getExpirePeriodPwdTarget(String today) throws Exception {
		return requestDAO.getExpirePeriodPwdTarget(today);
	}
	
	@Override
	public void expirePeriodPwd(String today) throws Exception {
		requestDAO.expirePeriodPwd(today);
	}
	
	@Override
	public void expireOtpPwd() throws Exception {
		requestDAO.expireOtpPwd();
	}



}
