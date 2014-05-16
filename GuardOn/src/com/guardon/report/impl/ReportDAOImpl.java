package com.guardon.report.impl;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Repository;

import com.guardon.report.ReportDAO;
import com.guardon.report.domain.ApprovalInfo;
import com.guardon.report.domain.LogInfo;
import com.guardon.report.domain.RejectInfo;
import com.ibatis.sqlmap.client.SqlMapClient;

@Repository("reportDAO")
public class ReportDAOImpl implements ReportDAO{
	@Inject
	@Named("sqlMapClient")
	SqlMapClient sqlMapClient;

	@Override
	public ArrayList<LogInfo> getLogInfo(String today) throws Exception {
		return (ArrayList<LogInfo>)sqlMapClient.queryForList("Report.getLogInfo", today);
	}
	@Override
	public ArrayList<ApprovalInfo> getApprovalInfo(String yesterday) throws Exception {
		return (ArrayList<ApprovalInfo>)sqlMapClient.queryForList("Report.getApprovalInfo", yesterday);
	}
	/*
	@Override
	public ArrayList<RejectInfo> getRejectInfo() throws Exception {
		return (ArrayList<RejectInfo>)sqlMapClient.queryForList("Report.getRejectInfo", null);
	}
	*/
	
}
