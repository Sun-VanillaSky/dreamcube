package com.dreamcube.service;

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
import com.dreamcube.dao.ImageDao;

public class ImageService implements ISImageService{
	private static final Logger logger = LogManager.getLogger(ImageService.class); // log

	
	public String insertImage(FileItem file){
		try {
			return new ImageDao().insertImage(file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public InputStream getImage(String id) throws IOException, SQLException{
		try {
			return new ImageDao().getImage(id);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
