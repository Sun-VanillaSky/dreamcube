package com.dreamcube.controller.api;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.dreamcube.commons.util.http.HttpUtils;
import com.dreamcube.dao.ImageDao;

/**
 * 上传一个文件并返回文件的id
 * @author 孙寿彬
 *
 */
@WebServlet("/api/up")
public class FileUpController extends HttpServlet {
	private static final long serialVersionUID = 5950359738441936461L;
	private static final Logger logger = LogManager.getLogger(FileUpController.class); // log

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("application/json;charset=utf-8");//指定返回的格式为JSON格式
		response.setCharacterEncoding("UTF-8");//setContentType与setCharacterEncoding的顺序不能调换，否则还是无法解决中文乱码的问题
		request.setCharacterEncoding("UTF-8");

		
		
		// commons-fileupload-1.3.3.jar

		// 声明disk --临时文件存储
		DiskFileItemFactory disk = new DiskFileItemFactory();
		disk.setSizeThreshold(1024 * 1024);
		disk.setRepository(new File("/tmp"));
		// 声明解析requst的servlet
		ServletFileUpload up = new ServletFileUpload(disk);
		try {
			// 解析requst
			List<FileItem> list = up.parseRequest(request);
			// 声明一个list<map>封装上传的文件的数据
			List<Map<String, String>> ups = new ArrayList<Map<String, String>>();

			for (FileItem file : list) {

				String imageID = new ImageDao().insertImage(file);
				logger.debug("图片id[" + imageID + "]");
				
				PrintWriter writer = response.getWriter();
				writer.println("{\"id\":\""+imageID+"\",\"name\":\"嘉佳\"}");
				writer.flush();
				writer.close();
				return;	
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
