package com.ruanko.web;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport {
	@Override
	public String execute() throws Exception{
		System.out.println("hahha");
		return SUCCESS;
	}
}
