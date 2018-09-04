package com.dreamcube.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

import org.apache.commons.fileupload.FileItem;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.dreamcube.commons.database.DBCPDataSource;

public class ImageDao {
	private static final Logger logger = LogManager.getLogger(ImageDao.class); // log

	
	public String insertImage(FileItem file) throws IOException, SQLException{
		String uuid = UUID.randomUUID().toString().replace("-", "");
		PreparedStatement ps = null;
        Connection connection = null;
		try {
	        connection = DBCPDataSource.getDBCPDataSource().getConnection();

	        // test
	        //DBCPDataSource.test();
	        
	        ps = connection.prepareStatement("INSERT INTO IMAGE VALUES(?,?)");
	        ps.setString(1, uuid);
	        InputStream in = file.getInputStream();
	        ps.setBinaryStream(2, in, in.available()); 
	        
	        logger.debug("长度【"+in.available()+"】");
	        int i = ps.executeUpdate();

	        // 上传失败
	        if(i == 0) {
	        	return null;
	        }
		}catch (Exception e) {
			e.printStackTrace();
        	return null;
		}finally {
			try {
				ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}			
			try {
				connection.close(); // 归还连接 --必须
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

        


		return uuid;
	}
	
	public InputStream getImage(String id) throws IOException, SQLException{
		InputStream binaryStream = null;
        Connection connection = DBCPDataSource.getDBCPDataSource().getConnection();

        PreparedStatement ps = connection.prepareStatement("SELECT * FROM  IMAGE WHERE ID = ?");
        
        ps.setString(1, id);

        ResultSet rs = ps.executeQuery();
        if(rs.next()) {
        	binaryStream = rs.getBinaryStream("IMAGE");
        }

        rs.close();
        ps.close();
        connection.close(); // 归还连接 --必须
        
        return binaryStream;
	}
}
