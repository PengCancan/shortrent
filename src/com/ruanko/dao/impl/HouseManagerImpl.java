package com.ruanko.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ruanko.dao.HouseManager;
import com.ruanko.model.House;
import com.ruanko.util.BaseDao;

public class HouseManagerImpl implements HouseManager {

	@Override
	public List<House> listAllUncheckedHouse(int pageSize, int pageNow) {
		// TODO Auto-generated method stub
		Connection conn = BaseDao.getConnection();
		PreparedStatement pstmt = null;
		List<House> list = new ArrayList<House>();
		ResultSet rs = null;
		try {
			if (conn != null && pageSize > 0 && pageNow > 0) {
				String sql = "select * from t_house order by id limit " + (pageNow * pageSize - pageSize) + ","
						+ pageSize;
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
			}

			while (rs.next()) {
				House house = new House();
				house.setId(rs.getInt(1));
				house.setUser_id(rs.getInt(2));
				house.setName(rs.getString(3));
				house.setBill(rs.getInt(4));
				house.setRenttype(rs.getInt(5));
				house.setKind(rs.getInt(6));
				house.setArea(rs.getFloat(7));
				house.setGuestnum(rs.getInt(8));
				list.add(house);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
