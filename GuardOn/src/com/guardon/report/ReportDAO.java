package com.guardon.report;

import java.util.ArrayList;

import com.guardon.report.domain.ApprovalInfo;
import com.guardon.report.domain.LogInfo;
import com.guardon.report.domain.RejectInfo;

public interface ReportDAO {
	public ArrayList<LogInfo> getLogInfo(String today) throws Exception;
	public ArrayList<ApprovalInfo> getApprovalInfo(String yesterday) throws Exception;
	//public ArrayList<RejectInfo> getRejectInfo() throws Exception;

}
