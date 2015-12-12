package com.ruanko.service;

import com.ruanko.dao.impl.AdminDaoImpl;
import com.ruanko.model.Admin;

public class AdminService {
	public Admin checkAdminLogin(Admin admin){
		return new AdminDaoImpl().checkAdminLogin(admin);
	}
}
