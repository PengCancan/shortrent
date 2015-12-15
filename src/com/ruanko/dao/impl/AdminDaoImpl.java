package com.ruanko.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ruanko.dao.AdminDao;
import com.ruanko.model.Admin;
import com.ruanko.model.User;
import com.ruanko.util.BaseDao;

public class AdminDaoImpl implements AdminDao {
	@Override
	public Admin checkAdminLogin(Admin admin)
	{
		String sql = "select * from t_manager where name = ? and password = ? " ;

		Connection connection = BaseDao.getConnection();
		Admin rtn = null;
		try {


			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, admin.getUsername());
			pstmt.setString(2, admin.getPassword());

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				rtn = new Admin();
				rtn.setId(rs.getInt("id"));
				rtn.setUsername(rs.getString("name"));
				rtn.setPassword(rs.getString("password"));
				
				pstmt.close();  
				connection.close();
				return rtn;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rtn;
	}

	@Override
	public User user_del(User user) {
		// TODO Auto-generated method stub
		return null;
	}
}
