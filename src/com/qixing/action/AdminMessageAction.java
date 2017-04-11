package com.qixing.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Users;
import com.qixing.service.UserManager;

@Scope("prototype")
public class AdminMessageAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String username;
	private Users admin;
	private String jsp;
	
	
	public String getJsp() {
		return jsp;
	}
	public void setJsp(String jsp) {
		this.jsp = jsp;
	}
	public Users getAdmin() {
		return admin;
	}
	public void setAdmin(Users admin) {
		this.admin = admin;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Autowired
	private UserManager userManager;
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
		admin = userManager.getAdmin(username);
		if(admin==null){
			return INPUT;
		}else if(jsp==null){
			System.out.println(admin);
			return SUCCESS;
		}else if(jsp.equals("adminchange")){
			return "adminchange";
		}else{
			return INPUT;
		}
		
	}
}
