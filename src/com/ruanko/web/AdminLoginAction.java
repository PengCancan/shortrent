package com.ruanko.web;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ruanko.model.Admin;
import com.ruanko.service.AdminService;

public class AdminLoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String execute(){ 
	Admin manager = new Admin();
	manager.setUsername(this.username);
	manager.setPassword(this.password);
	AdminService adminService = new AdminService();
	Admin admin = adminService.checkAdminLogin(manager);
	if(admin != null && manager.getUsername().equals(admin.getUsername())){
		ActionContext.getContext().put("admin", manager);
		return SUCCESS;
	}else
		return "fail";
	}
}
