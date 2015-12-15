package com.ruanko.service;

import java.util.List;

import com.ruanko.dao.impl.HouseManagerImpl;
import com.ruanko.model.House;

public class HouseManagerService {
	public List<House> listAllUncheckedHouse(int pageSize, int pageNow) {
		// TODO Auto-generated method stub
		return new HouseManagerImpl().listAllUncheckedHouse(pageSize, pageNow);
	}
}
