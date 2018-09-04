package com.dreamcube.commons.database;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.ClassRule;
import org.junit.Test;

/**
 * 
 * 链接数据库的工具类
 * @author 孙寿彬
 * 
 * 
 *
 */
public class DBCPDataSource {

	// 数据源
    private static BasicDataSource dataSource = null;
    // 使用log4j2
    private static final Logger logger = LogManager.getLogger(DBCPDataSource.class);

    // @Test
    // public void test(){
    // logger.debug("调试");
    // logger.info("信息");
    // logger.warn("警告");
    // logger.error("错误");
    // logger.fatal("严重错误");
    // }
    /**
     * 
     * 获取以一个数据源
     * 
     * @return 数据源
     */
    public static BasicDataSource getDBCPDataSource() {
    	// 数据源已经存在 且没有关闭
        if (DBCPDataSource.dataSource != null && !DBCPDataSource.dataSource.isClosed()) {
            return DBCPDataSource.dataSource;
        }

        // 加载配置文件
        Properties properties = new Properties();
        try {
            InputStream in = DBCPDataSource.class.getClassLoader().getResourceAsStream("dbcp.properties");
            properties.load(in);
        } catch (IOException e) {
            e.printStackTrace();
            logger.info("加载数据库配置文件出错[dbcp.properties]");
            return null;
        }
        // 获取配置
        if (properties.isEmpty()) {
            logger.info("加载数据库配置文件出错[dbcp.properties]");
            return null;
        }
        
        DBCPDataSource.dataSource = new BasicDataSource();

        // 基础配置
        DBCPDataSource.dataSource.setUsername(properties.getProperty("username"));
        DBCPDataSource.dataSource.setPassword(properties.getProperty("password"));
        DBCPDataSource.dataSource.setUrl(properties.getProperty("url"));
        DBCPDataSource.dataSource.setDriverClassName(properties.getProperty("driverClassName"));
        // 性能配置
        DBCPDataSource.dataSource.setMaxWaitMillis(Long.parseLong(properties.getProperty("maxWaitMillis")));
        DBCPDataSource.dataSource.setMaxIdle(Integer.parseInt(properties.getProperty("maxIdle")));
        DBCPDataSource.dataSource.setMinIdle(Integer.parseInt(properties.getProperty("minIdle")));
        DBCPDataSource.dataSource.setInitialSize(Integer.parseInt(properties.getProperty("initialSize")));

        logger.info("--------------------------------------------");
        logger.info("-- 数据库配置 --");
        logger.info("--------------------------------------------");
        logger.info("Username:"+properties.getProperty("username"));
        logger.info("Password:"+properties.getProperty("password"));
        logger.info("Url"+properties.getProperty("url"));
        logger.info("DriverClassName:"+properties.getProperty("driverClassName"));
        logger.info("MaxWaitMillis:"+properties.getProperty("maxWaitMillis"));
        logger.info("MaxIdle:"+properties.getProperty("maxIdle"));
        logger.info("MinIdle:"+properties.getProperty("minIdle"));
        logger.info("InitialSize:"+properties.getProperty("initialSize"));
        logger.info("--------------------------------------------");

        
        
        return DBCPDataSource.dataSource;
    }

    /**
     * 测试数据源性能
     */
    public static void test() {
        try {

            int i = 1;
            while (i < 100) {

                Connection connection = getDBCPDataSource().getConnection();

                Statement sm = connection.createStatement();
                // mysql 表名linux下默认区分大小写
                ResultSet rs = sm.executeQuery("SELECT * FROM `USER` ");
                while (rs.next()) {
                    String id = rs.getString("ID");
                    String name = rs.getString("NAME");
                    String password = rs.getString("PASSWORD");
                    
                    
                    System.out.println("" + i + "从数据库中得到一条记录的值" + id);
                    System.out.println("" + i + "从数据库中得到一条记录的值" + name);
                    System.out.println("" + i + "从数据库中得到一条记录的值" + password);
                    
                }
                rs.close();
                sm.close();
                connection.close(); // 归还连接
                i++;
            }
            
        } catch (SQLException e) {
            logger.info("-- 数据库测试出错 --");
            e.printStackTrace();
        }
    }
    
    @Test
    public void junitest() {
    	DBCPDataSource.test();
    }

}
