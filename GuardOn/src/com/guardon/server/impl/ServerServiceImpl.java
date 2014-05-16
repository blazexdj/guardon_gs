package com.guardon.server.impl;

import java.util.ArrayList;
import java.util.Map;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Service;

import com.guardon.server.ServerDAO;
import com.guardon.server.ServerService;
import com.guardon.server.domain.Server;

@Service("serverService")
public class ServerServiceImpl implements ServerService{
	
	@Inject
	@Named("serverDAO")
	ServerDAO serverDAO;

	@Override
	public void insertServer(Server Server) throws Exception {
		serverDAO.insertServer(Server);		
	}
	
	@Override
	public void insertDBServer(Server Server) throws Exception {
		serverDAO.insertDBServer(Server);		
	}

	@Override
	public int updateServer(Server Server) throws Exception {
		return serverDAO.updateServer(Server);
	}

	@Override
	public int delServer(String serverName) throws Exception {
		return serverDAO.delServer(serverName);
	}

	@Override
	public String getServerUrl(String serverName) throws Exception {
		return serverDAO.getServerUrl(serverName);
	}

	@Override
	public String getServerDesc(String serverName) throws Exception {
		return serverDAO.getServerDesc(serverName);
	}

	@Override
	public String getServerId(String serverName) throws Exception {
		return serverDAO.getServerId(serverName);
	}

	@Override
	public String getServerPwd(String serverName) throws Exception {
		return serverDAO.getServerPwd(serverName);
	}

	@Override
	public String getConnectType (String serverName) throws Exception {
		return serverDAO.getConnectType(serverName);
	}
	
	@Override
	public String getServerOS (String serverName) throws Exception {
		return serverDAO.getServerOS(serverName);
	}
	
	@Override
	public String getWorkflowName (String serverName) throws Exception {
		return serverDAO.getWorkflowName(serverName);
	}

	@Override
	public ArrayList<Server> getServerList(int page) throws Exception {
		int startIndex = (page-1)*15;
		return serverDAO.getServerList(startIndex);
	}
	
	@Override
	public ArrayList<Server> getWfServerList(int page) throws Exception {
		int startIndex = (page-1)*15;
		return serverDAO.getWfServerList(startIndex);
	}

	@Override
	public String getServerIpAddress(String serverName) throws Exception {
		return serverDAO.getServerIpAddress(serverName);
	}
	
	@Override
	public String getPort(String serverName) throws Exception {
		return serverDAO.getPort(serverName);
	}


	@Override
	public String getServerName(String serverName) throws Exception {
		return serverDAO.getServerName(serverName);
	}

	@Override
	public int getServerListCount() throws Exception {
		return serverDAO.getServerListCount();
	}
	
	@Override
	public void setWorkflowName(Map<String, String> map) throws Exception {
		serverDAO.setWorkflowName(map);
	}

}
