package com.guardon.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@RequestMapping("/*")
@SessionAttributes("server")
public class ServerController {
/*
	@Inject
	@Named("serverService") ServerService serverService;
	
	 @RequestMapping("/dbInstall.do")
	 public String dbInstall(HttpServletRequest request) throws Exception{
		 
		 return "dbInstall";

		  String userPwd, userId;
		  userPwd=request.getParameter("userPwd");
		  userId=request.getParameter("userId");

		  User user = new User();
		  user.setUserId("onsol");
		  user.setUserPwd("1234");
		  
		  if(userPwd.equals(user.getUserPwd()) && userId.equals(user.getUserId())){
			  return "dbInstall";
		  }
		  else{
			  return "adminLogin";  
		  } 

		 

	 }
	
	 @RequestMapping("/insertDb.do")
		public String insertDb(HttpServletRequest request) throws Exception{
			return "dbInstall";
		}
	 
	 @RequestMapping("/insertDBServer.do")
	 public String insertDBServer(HttpServletRequest request) throws Exception{
		 
		 return "dbList";
	 }
	*/
}
