package com.luke.struts.dao;

import com.luke.struts.entity.User;
import com.luke.struts.util.BaseDao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends BaseDao {
	
	/*
	 * add user
	 * @author : Luke;
	 * @date: 12/19/2016
	 * 
	 * */
	public int addUser(User user) {
		String sql = "INSERT INTO `struts_user`.`userInfor` (`name`, `age`) VALUES (?, ?)";
		
		try {
			return this.executeUpdate(sql, user.getName(), user.getAge());
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			this.closeAll();
		}
		return 0;
	}
	
	public List<User> getList() {
		String sql = "select name, age from userinfor";
		List<User> list = new ArrayList<User>();
		ResultSet rs = this.executeQuery(sql);
		try {
			while(rs.next()) {
				User u = new User();
				u.setName(rs.getString(1));
				u.setAge(rs.getInt(2));
				list.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll();
		}
		return list.size()>0?list:null;
	}
	
}
