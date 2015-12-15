package com.ruanko.dao;

import java.util.List;

import com.ruanko.model.House;

public interface HouseManager {
	public List<House> listAllUncheckedHouse(int pageSize, int pageNow);
}
