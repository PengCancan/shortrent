package com.ruanko.web;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ruanko.model.User;
import com.ruanko.service.UserService;

public class UserManagementAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String user_list(){
		List<User>  users = new UserService().user_list();
		ActionContext.getContext().put("users", users);
		return "list";
	}
	public String user_add(){
		return "add";
	}
	public String user_del(){
		new UserService().user_del(id);
		return "del";
	}
}
