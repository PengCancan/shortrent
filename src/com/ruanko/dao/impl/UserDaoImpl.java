package com.ruanko.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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

	@Override
	public List<User> user_list() {
		List<User>  users;
		String sql="select * from t_user";
		Connection connection = BaseDao.getConnection();
		try{
			PreparedStatement pstmt = connection.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery(sql);
			users = new ArrayList<User>();
			while (rs.next()) {
				User rtn = new User();
				rtn.setId(rs.getInt("id"));
				rtn.setName(rs.getString("name"));
				rtn.setPassword(rs.getString("password"));
				rtn.setSex(rs.getInt("sex"));
				rtn.setMobile(rs.getString("mobile"));
				users.add(rtn);
			}
			BaseDao.closeAll(connection, pstmt, rs);
			return users;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void user_del(int id) {
		String sql = "delete from t_user where id=" + id;
		Connection connection = BaseDao.getConnection();
		
		Statement statement = null;
		try {
			statement = connection.createStatement();
						statement.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		BaseDao.closeAll(connection, statement,null);
	}
}
