package com.ruanko.dao;

import com.ruanko.model.Admin;
import com.ruanko.model.User;

public interface AdminDao {
	public Admin checkAdminLogin(Admin admin);
	public User user_del(User user);
}
