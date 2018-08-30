package com.dreamcube.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dreamcube.commons.database.DBCPDataSource;
import com.dreamcube.pojo.User;

public class UserDao {

	
	public User getUserByID(String id){
		User user = new User();
		
        try {


            Connection connection = DBCPDataSource.getDBCPDataSource().getConnection();

            Statement sm = connection.createStatement();
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM `USER` where id = ?");
            ps.setString(1, id);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String name = rs.getString("NAME");
                String password = rs.getString("PASSWORD");

                user.setId(id);
                user.setName(name);
                user.setPassword(password);
            }
            rs.close();
            sm.close();
            connection.close(); // 归还连接

        } catch (SQLException e) {
            e.printStackTrace();
        }
		
		
		
		return user;
	}
}
