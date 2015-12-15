package com.ruanko.web;

import com.opensymphony.xwork2.ActionSupport;
import com.ruanko.model.User;
import com.ruanko.service.UserService;

public class UserAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String password;
	private int sex;
	private String mobile;
	private String email;
	private String address;
	private String picture;

	@Override
	public String execute() {
		User user = new User();
		user.setName(this.name);
		user.setPassword(this.password);
		user.setSex(1);
		if (user.getName() != null) {
			UserService userService = new UserService();
			userService.user_add(user);
			return SUCCESS;
		}else
			return "fail";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}
}
