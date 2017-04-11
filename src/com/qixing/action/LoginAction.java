package com.qixing.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionContext;
	import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Travel;
import com.qixing.domain.Users;
import com.qixing.service.TravelManager;
import com.qixing.service.UserManager;

@Scope("prototype")
public class LoginAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private List<Travel> travels;
	private Users user;
	
	public Users getUser() {
		return user;
	}
	public void setUsers(Users user) {
		this.user = user;
	}
	public List<Travel> getTravels() {
		return travels;
	}
	public void setTravels(List<Travel> travels) {
		this.travels = travels;
	}
	@Autowired
	private UserManager userManager;
	
	@Autowired
	private TravelManager travelManager;
	
	
	public TravelManager getTravelManager() {
		return travelManager;
	}
	public void setTravelManager(TravelManager travelManager) {
		this.travelManager = travelManager;
	}
	public UserManager getUserManager() {
		return userManager;
	}
	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		int i = userManager.login(username, password);
		if(i==-1){
			this.addActionError("’À∫≈√‹¬Î≤ª’˝»∑£°");
			return INPUT;
		}else if(i==0){
			travels = travelManager.getTravels();
			user = userManager.getAdmin(username);
//			System.out.println(user);
			ActionContext.getContext().getSession().put("user", user);
			return LOGIN;
		}else{
//			System.out.println(i);
			return SUCCESS;
		}
	}
}
