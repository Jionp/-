package com.qixing.service;

import java.util.List;

import com.qixing.domain.Users;


public interface UserManager {
	boolean exists(String username);
	void register(Users users);
	int login(String username,String password);
	Users getAdmin(String username);
	List<Users> getAdmins();
	int getChange(Users user);
	int deleUser(String username);
	List<Users> getUsers();
	void ChangeUser(Users user);
	List<Users> getRecommendUsers();
}
