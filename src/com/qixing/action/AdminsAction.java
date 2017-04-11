package com.qixing.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Users;
import com.qixing.service.UserManager;

@Scope("prototype")
public class AdminsAction extends ActionSupport{
	private List<Users> admins;
	private String jsp;
	
	public String getJsp() {
		return jsp;
	}
	public void setJsp(String jsp) {
		this.jsp = jsp;
	}
	public List<Users> getAdmins() {
		return admins;
	}
	public void setAdmins(List<Users> admins) {
		this.admins = admins;
	}

	private static final long serialVersionUID = 1L;
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
		if(jsp==null){
			return INPUT;
		}else if(jsp.equals("admins")){
			admins = userManager.getAdmins();
			return jsp;
		}else if(jsp.equals("users")){
			admins = userManager.getUsers();
			return jsp;
		}else if(jsp.equals("succ")){
			return jsp;
		}
		else{
			return INPUT;
		}
		
	}
}
