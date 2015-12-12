package com.ruanko.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.ruanko.dao.UserDao;
import com.ruanko.model.User;
import com.ruanko.util.BaseDao;

public class UserDaoImpl implements UserDao {

	@Override
	public void user_add(User user) {
		String sql = "insert into t_user(name, password,sex,mobile) VALUES(?,?,?,?)";
		Connection connection = BaseDao.getConnection();
		try{
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getPassword());
			pstmt.setInt(3, user.getSex());
			pstmt.setString(4, user.getMobile());
			pstmt.execute();
			pstmt.close();
			connection.close();
		}catch(Exception e){
			e.printStackTrace();		    
		}
	}

}
