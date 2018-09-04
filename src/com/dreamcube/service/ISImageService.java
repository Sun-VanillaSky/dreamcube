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

public interface ISImageService {
	
	public String insertImage(FileItem file) throws IOException, SQLException;
	
	public InputStream getImage(String id) throws IOException, SQLException;
}
