package com.ruanko.web;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.ruanko.model.House;
import com.ruanko.service.HouseManagerService;

public class HouseManagerAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int pageNow = 1 ; //初始化为1,默认从第一页开始显示  
    private int pageSize = 3 ; //每页显示5条记录  
    private List<House> houses ;
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<House> getHouses() {
		return houses;
	}
	public void setHouses(List<House> houses) {
		this.houses = houses;
	}
	public String  allUncheckedHouse_list() {
		// TODO Auto-generated method stub
		houses = new HouseManagerService().listAllUncheckedHouse(pageSize, pageNow);
		return "list";
	}
}
