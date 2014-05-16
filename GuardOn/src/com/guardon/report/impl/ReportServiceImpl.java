package com.guardon.report.impl;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Service;

import com.guardon.report.ReportDAO;
import com.guardon.report.ReportService;
import com.guardon.report.domain.ApprovalInfo;
import com.guardon.report.domain.LogInfo;

@Service("reportService")
public class ReportServiceImpl implements ReportService{
	
	@Inject
	@Named("reportDAO")
	ReportDAO reportDAO;
	
	@Override
	public ArrayList<LogInfo> getLogInfo(String today) throws Exception{
		return reportDAO.getLogInfo(today);		
	}
	@Override
	public ArrayList<ApprovalInfo> getApprovalInfo(String yesterday) throws Exception{
		return reportDAO.getApprovalInfo(yesterday);
	}
	
	/*
	@Override
	public ArrayList<RejectInfo> getRejectInfo() throws Exception{
		return reportDAO.getRejectInfo();
	}
	*/

}
