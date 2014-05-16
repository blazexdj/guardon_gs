package com.guardon.workflow.domain;

public class Workflow {

	private String workflowName;
	private String workflowDesc;
	private int workflowLevel;
	private String userId;
	public String getWorkflowName() {
		return workflowName;
	}
	public void setWorkflowName(String workflowName) {
		this.workflowName = workflowName;
	}
	public String getWorkflowDesc() {
		return workflowDesc;
	}
	public void setWorkflowDesc(String workflowDesc) {
		this.workflowDesc = workflowDesc;
	}
	public int getWorkflowLevel() {
		return workflowLevel;
	}
	public void setWorkflowLevel(int workflowLevel) {
		this.workflowLevel = workflowLevel;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
}
