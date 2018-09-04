package com.dreamcube.controller.api;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.dreamcube.commons.util.http.HttpUtils;
import com.dreamcube.dao.ImageDao;

/**
 * 
 * 根据图片id显示图片
 * @author 孙寿彬
 * 
 * /api/image?id=124232546576869797
 */
@WebServlet("/api/image")
public class ImageController extends HttpServlet {
	private static final long serialVersionUID = 5950359738441936461L;
	private static final Logger logger = LogManager.getLogger(ImageController.class); // log

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 基础设置
		HttpUtils.defaultServletSetting(request, response);
		request.setCharacterEncoding("UTF-8");
		
		
	    // 获取请求传过来的id，对应的就是图片的id
        String id = request.getParameter("id");
        // 获取图片字节流
        InputStream inStream;
        ServletOutputStream soutStream = null;
		try {
			inStream = new ImageDao().getImage(id);
			
	        // 建立图片输出的输出流
	        soutStream = response.getOutputStream();
	        
	        if (inStream.equals(null)) {
	            soutStream.println("图片无法显示 ！<br>");
	        } else {
	            // 定义字节流缓冲数组
	            byte[] buffer = new byte[1024];

	            // 循环输出字节流, 为空时，read()返回 -1
	            while (inStream.read(buffer) != -1) {
	                soutStream.write(buffer);
	            }

	        }
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
            // 输入完毕，清楚缓冲
            soutStream.flush();
            soutStream.close();
		}

		
		

	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
