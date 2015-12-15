package com.ruanko.dao;

import java.util.List;

import com.ruanko.model.User;

public interface UserDao {
	public void user_add(User user);
	public List<User> user_list();
	public void user_del(int id);
}
