package com.guardon.server;

import java.util.ArrayList;
import java.util.Map;

import com.guardon.server.domain.Server;

public interface ServerDAO {
	
	public void insertServer(Server server) throws Exception;
	
	public void insertDBServer(Server Server) throws Exception;
	
	public int updateServer(Server server) throws Exception;
	
	public int delServer(String serverName)throws Exception;
	
	public String getServerUrl(String serverName)throws Exception;
	
	public String getServerDesc(String serverName)throws Exception;
	
	public String getServerId(String serverName)throws Exception;
	
	public String getServerPwd(String serverName)throws Exception;
	
	public String getConnectType(String serverName)throws Exception;
	
	public String getServerOS(String serverName)throws Exception;
	
	public String getWorkflowName(String serverName)throws Exception;
	
	public ArrayList<Server> getServerList(int startIndex) throws Exception;
	
	public ArrayList<Server> getWfServerList(int page) throws Exception;
	
	public int getServerListCount() throws Exception;
	
	public String getServerIpAddress(String serverName) throws Exception;
	
	public String getPort(String serverName) throws Exception;

	public String getServerName(String serverName) throws Exception;
	
	public void setWorkflowName(Map<String, String> map) throws Exception;
}
