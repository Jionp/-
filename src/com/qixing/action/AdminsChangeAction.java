package com.qixing.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Users;
import com.qixing.service.UserManager;

@Scope("prototype")
public class AdminsChangeAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String sex;
	private int age;
	private String phone;
	private int power;
	
	private String jsp;
	
	@Autowired
	private UserManager userManager;

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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getPower() {
		return power;
	}

	public void setPower(int power) {
		this.power = power;
	}

	public String getJsp() {
		return jsp;
	}

	public void setJsp(String jsp) {
		this.jsp = jsp;
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
		System.out.println(age);
		Users user = new Users();
		user.setPassword(password);
		user.setPhone(phone);
		user.setPower(power);
		user.setSex(sex);
		user.setUsername(username);
		user.setAge(age);
		int change = userManager.getChange(user);
		if(change>0&&jsp!=null){
			if(jsp.equals("adminchange")){
				return "adminchange";
			}else{
				return INPUT;
			}
		}else{
			return INPUT;
		}
		
	}
}
















