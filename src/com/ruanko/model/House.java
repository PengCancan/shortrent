package com.ruanko.model;

import java.util.Date;

public class House {
	   int id;                   //int not null primary key  auto_increment, -- '关键字，自增字段'
	   int user_id;              //int, -- '用户id'
	   String name;                 //varchar(50), -- '房屋名称'
	   int bill;                 //int, -- '是否提供发票（1、提供，2不提供）'
	   int renttype ;            //int, -- '出租类型（1、整租，2、单间，3、床位）'
	   int kind;                 //int, -- '房屋类型（1、酒店，2、客栈，3、旅馆）'
	   float area;                 //float, -- '面积'
	   int guestnum;             //int, -- '可容纳房客数'
	   int bednum;               //int, -- '床位数'
	   int bedroomnum;           //int, -- '卧室数'
	   int roomnum;              //int, -- '房间数'
	   String bedtype ;             //varchar(50), -- '床型（1、双人床，2、单人床、3、高低床）'
	   int toiletnum ;           //int, -- '卫生间数'
	   String roomdesc;             //text, -- '房间描述'
	   String userule;              //text, -- '使用规则'
	   String facility ;            //text, -- '服务设施'
	   String address ;             //text, -- '地址'
	   String picture1;            //varchar(200), -- '图片1'
	   String shotcut1;            //varchar(200), -- '缩略图1'
	   String picture2 ;            //varchar(200), -- '图片2'
	   String  shotcut2;             //varchar(200), -- '缩略图2'
	   String picture3;             //varchar(200), -- '图片3'
	   String shotcut3;             //varchar(200), -- '缩略图3'
	   String checkinTime;         //varchar(50), -- '入住时间'
	   String checkoutTime;         //varchar(50), -- '退房时间'
	   int minday;               //int, -- '最小天数'
	   int maxday;               //int,-- '最大天数'
	   int refundday ;           //int, -- '全额退款日'
	   int payrule;              //varchar(50), -- '付款规则'
	   int dayprice;            //float(8,2), -- '日租价'
	   Date createtime;           //timestamp default CURRENT_TIMESTAMP, -- '创建时间'
	   public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBill() {
		return bill;
	}
	public void setBill(int bill) {
		this.bill = bill;
	}
	public int getRenttype() {
		return renttype;
	}
	public void setRenttype(int renttype) {
		this.renttype = renttype;
	}
	public int getKind() {
		return kind;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}
	public float getArea() {
		return area;
	}
	public void setArea(float area) {
		this.area = area;
	}
	public int getGuestnum() {
		return guestnum;
	}
	public void setGuestnum(int guestnum) {
		this.guestnum = guestnum;
	}
	public int getBednum() {
		return bednum;
	}
	public void setBednum(int bednum) {
		this.bednum = bednum;
	}
	public int getBedroomnum() {
		return bedroomnum;
	}
	public void setBedroomnum(int bedroomnum) {
		this.bedroomnum = bedroomnum;
	}
	public int getRoomnum() {
		return roomnum;
	}
	public void setRoomnum(int roomnum) {
		this.roomnum = roomnum;
	}
	public String getBedtype() {
		return bedtype;
	}
	public void setBedtype(String bedtype) {
		this.bedtype = bedtype;
	}
	public int getToiletnum() {
		return toiletnum;
	}
	public void setToiletnum(int toiletnum) {
		this.toiletnum = toiletnum;
	}
	public String getRoomdesc() {
		return roomdesc;
	}
	public void setRoomdesc(String roomdesc) {
		this.roomdesc = roomdesc;
	}
	public String getUserule() {
		return userule;
	}
	public void setUserule(String userule) {
		this.userule = userule;
	}
	public String getFacility() {
		return facility;
	}
	public void setFacility(String facility) {
		this.facility = facility;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPicture1() {
		return picture1;
	}
	public void setPicture1(String picture1) {
		this.picture1 = picture1;
	}
	public String getShotcut1() {
		return shotcut1;
	}
	public void setShotcut1(String shotcut1) {
		this.shotcut1 = shotcut1;
	}
	public String getPicture2() {
		return picture2;
	}
	public void setPicture2(String picture2) {
		this.picture2 = picture2;
	}
	public String getShotcut2() {
		return shotcut2;
	}
	public void setShotcut2(String shotcut2) {
		this.shotcut2 = shotcut2;
	}
	public String getPicture3() {
		return picture3;
	}
	public void setPicture3(String picture3) {
		this.picture3 = picture3;
	}
	public String getShotcut3() {
		return shotcut3;
	}
	public void setShotcut3(String shotcut3) {
		this.shotcut3 = shotcut3;
	}
	public String getCheckinTime() {
		return checkinTime;
	}
	public void setCheckinTime(String checkinTime) {
		this.checkinTime = checkinTime;
	}
	public String getCheckoutTime() {
		return checkoutTime;
	}
	public void setCheckoutTime(String checkoutTime) {
		this.checkoutTime = checkoutTime;
	}
	public int getMinday() {
		return minday;
	}
	public void setMinday(int minday) {
		this.minday = minday;
	}
	public int getMaxday() {
		return maxday;
	}
	public void setMaxday(int maxday) {
		this.maxday = maxday;
	}
	public int getRefundday() {
		return refundday;
	}
	public void setRefundday(int refundday) {
		this.refundday = refundday;
	}
	public int getPayrule() {
		return payrule;
	}
	public void setPayrule(int payrule) {
		this.payrule = payrule;
	}
	public int getDayprice() {
		return dayprice;
	}
	public void setDayprice(int dayprice) {
		this.dayprice = dayprice;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	int state;                //int, -- '状态（1、待审核，2、审核待发布，3已发布，4、审核拒绝）'       
}
