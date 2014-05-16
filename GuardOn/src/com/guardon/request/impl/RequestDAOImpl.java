package com.guardon.request.impl;

import java.util.ArrayList;
import java.util.Map;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Repository;

import com.guardon.request.RequestDAO;
import com.guardon.request.domain.Request;
import com.ibatis.sqlmap.client.SqlMapClient;

@Repository("requestDAO")
public class RequestDAOImpl implements RequestDAO{
	@Inject
	@Named("sqlMapClient")
	SqlMapClient sqlMapClient;
	
	@Override
	public void insertRequest(Request request) throws Exception{
		sqlMapClient.insert("Request.insertRequest", request);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Request> getApprovedList(int page) throws Exception {
		return (ArrayList<Request>) sqlMapClient.queryForList("Request.getApprovedList", page);
	}

	@Override
	public String getOtpApproved(Map<String, String> map) throws Exception {
		return sqlMapClient.queryForObject("Request.getOtpApproved", map).toString();
	}

	@Override
	public void updateApproved(Map<String, String> map) throws Exception {
		sqlMapClient.update("Request.updateApproved",map);
		
	}

	@Override
	public void updateRejected(Map<String, String> map) throws Exception {
		sqlMapClient.update("Request.updateRejected",map);
		
	}	

	@Override
	public ArrayList<Request> getPeriodPwd(Map<String, String> map) throws Exception {
		return (ArrayList<Request>) sqlMapClient.queryForList("Request.getPeriodPwd", map);
	}
	
	@Override
	public ArrayList<Request> getApprovedReq() throws Exception {
		return (ArrayList<Request>) sqlMapClient.queryForList("Request.getApprovedReq");
	}
	
	@Override
	public String getEndDate(Map<String, String> map) throws Exception {
		return (String) sqlMapClient.queryForObject("Request.getEndDate", map);
	}

	@Override
	public void updatePassword(Map<String, String> map) throws Exception {
		sqlMapClient.update("Request.updatePassword", map);
	}

	@Override
	public void updateDestructed(Map<String, String> map)
			throws Exception {
		sqlMapClient.update("Request.updateDestructed",map);
		
	}

	@Override
	public void updateExpiration(Map<String, String> map) throws Exception {
		sqlMapClient.update("Request.updateExpiration",map);
		
	}
	
	@Override
	public String checkDuplReq(Map<String, String> map) throws Exception {
		return sqlMapClient.queryForObject("Request.checkDuplReq", map).toString();
	}
	
	@Override
	public ArrayList<Request> getExpirePeriodPwdTarget(String today) throws Exception {
		return (ArrayList<Request>) sqlMapClient.queryForList("Request.getExpirePeriodPwdTarget", today);
	}
	
	@Override
	public void expirePeriodPwd(String today) throws Exception {
		sqlMapClient.update("Request.expirePeriodPwd", today);
	}
	
	@Override
	public void expireOtpPwd() throws Exception {
		sqlMapClient.update("Request.expireOtpPwd");
	}


}
