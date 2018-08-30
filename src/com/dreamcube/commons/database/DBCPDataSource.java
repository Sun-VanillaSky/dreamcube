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
import org.junit.Test;

/**
 * @author 孙寿彬
 * 
 * 链接数据库的工具类
 * 
 *
 */
public class DBCPDataSource {

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
        if (DBCPDataSource.dataSource != null) {
            return DBCPDataSource.dataSource;
        }

        // 加载配置文件
        Properties properties = new Properties();
        try {
            InputStream in = DBCPDataSource.class.getClassLoader().getResourceAsStream("dbcp.properties");
            properties.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }
        DBCPDataSource.dataSource = new BasicDataSource();
        // 获取配置
        if (properties.isEmpty()) {
            return null;
        }
        // 基础配置
        dataSource.setUsername(properties.getProperty("username"));
        dataSource.setPassword(properties.getProperty("password"));
        dataSource.setUrl(properties.getProperty("url"));
        dataSource.setDriverClassName(properties.getProperty("driverClassName"));
        // 性能配置
        dataSource.setMaxWaitMillis(Long.parseLong(properties.getProperty("maxWaitMillis")));
        dataSource.setMaxIdle(Integer.parseInt(properties.getProperty("maxIdle")));
        dataSource.setMinIdle(Integer.parseInt(properties.getProperty("minIdle")));
        dataSource.setInitialSize(Integer.parseInt(properties.getProperty("initialSize")));

        logger.info("数据源加载完成");

        return dataSource;
    }

    /**
     * 测试数据源性能
     */
    @Test
    public void test() {
        try {

            int i = 1;
            while (1 < 100) {

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
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
