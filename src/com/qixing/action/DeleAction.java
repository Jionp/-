package com.qixing.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.service.UserManager;

@Scope("prototype")
public class DeleAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String jsp;
	private	String username;
	@Autowired
	private UserManager userManager;
	public String getJsp() {
		return jsp;
	}
	public void setJsp(String jsp) {
		this.jsp = jsp;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public UserManager getUserManager() {
		return userManager;
	}
	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(jsp==null){
			return INPUT;
		}else if(jsp.equals("admindele")){
			userManager.deleUser(username);
			return jsp;
		}
		return INPUT;
	}
}
