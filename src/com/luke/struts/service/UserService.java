package com.luke.struts.service;

import java.util.List;

import com.luke.struts.dao.UserDao;
import com.luke.struts.entity.User;

public class UserService {
	private UserDao userDao = new UserDao(); // Using DAO connect to DB
	
	public int addUsers(List<User> users){
		int i = 0;
		for(User u : users){
			i = i + userDao.addUser(u);
		}
		return i;
	}
	
	public List<User> getUserList() {
		return userDao.getList();
	}
}
