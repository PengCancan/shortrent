package com.ruanko.service;

import java.util.List;

import com.ruanko.dao.impl.UserDaoImpl;
import com.ruanko.model.User;

public class UserService {
	public void user_add(User user){
		new UserDaoImpl().user_add(user);
	}
	public List<User> user_list(){
		return new UserDaoImpl().user_list();
	}
	public void user_del(int id){
		new UserDaoImpl().user_del(id);
	}
}
