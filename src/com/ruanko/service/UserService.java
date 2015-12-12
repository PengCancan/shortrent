package com.ruanko.service;

import com.ruanko.dao.impl.UserDaoImpl;
import com.ruanko.model.User;

public class UserService {
	public void user_add(User user){
		new UserDaoImpl().user_add(user);
	}
}
