package com.qixing.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.qixing.dao.UserDAO;
import com.qixing.domain.Users;
import com.qixing.service.UserManager;

@Component("userManager")
public class UserManagerImpl implements UserManager{
	
	@Autowired
	private UserDAO userDAO ;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public boolean exists(String username) {
		// TODO Auto-generated method stub
		return userDAO.exists(username);
	}

	@Override
	public void register(Users users) {
		// TODO Auto-generated method stub
		userDAO.save(users);
	}

	@Override
	public int login(String username, String password) {
		// TODO Auto-generated method stub
		return userDAO.login(username, password);
	}

	@Override
	public Users getAdmin(String username) {
		// TODO Auto-generated method stub
		return userDAO.getAdmin(username);
	}

	@Override
	public List<Users> getAdmins() {
		// TODO Auto-generated method stub
		return userDAO.getAdmins();
	}

	@Override
	public int getChange(Users user) {
		// TODO Auto-generated method stub
		return userDAO.getChange(user);
	}

	@Override
	public int deleUser(String username) {
		// TODO Auto-generated method stub
		return userDAO.deleUser(username);
	}

	@Override
	public List<Users> getUsers() {
		// TODO Auto-generated method stub
		return userDAO.getUsers();
	}

	@Override
	public void ChangeUser(Users user) {
		// TODO Auto-generated method stub
		userDAO.ChangeUser(user);
	}

	@Override
	public List<Users> getRecommendUsers() {
		// TODO Auto-generated method stub
		return userDAO.getRecommendUsers();
	}
	
}
