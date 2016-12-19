package com.luke.struts.action;



import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import com.luke.struts.entity.User;
import com.luke.struts.service.UserService;
import com.opensymphony.xwork2.ActionSupport;


public class UserAction extends ActionSupport {
	private UserService userService = new UserService();
	private List<User> user;
	private JSONArray root;
	
	
	public String add() {
		try {
			userService.addUsers(user);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	public String getUsers() {
		List<User> list = userService.getUserList();
		
		root = JSONArray.fromObject(list);
		System.out.println("json="+root.toString());
		return "success";

	}
	
	
	public List<User> getUser() {
		return user;
	}

	public void setUser(List<User> user) {
		this.user = user;
	}

	public JSONArray getRoot() {
		return root;
	}

	public void setRoot(JSONArray root) {
		this.root = root;
	}
	
}
