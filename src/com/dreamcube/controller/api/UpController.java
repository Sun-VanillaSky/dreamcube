package com.dreamcube.controller.api;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
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

@WebServlet("/api/testup")
public class UpController extends HttpServlet {
	private static final long serialVersionUID = 5950359738441936461L;
	private static final Logger logger = LogManager.getLogger(UpController.class); // log

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 基础设置
		HttpUtils.defaultServletSetting(request, response);

		// commons-fileupload-1.3.3.jar

		request.setCharacterEncoding("UTF-8");
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
				Map<String, String> mm = new HashMap<String, String>();



				// 获取文件名 及其他信息
				String fileName = file.getName();
				String fileType = file.getContentType();
				InputStream in = file.getInputStream(); // 读取临时文件的流

				int size = in.available();
				if (size <= 0) {
					continue;
				}
				
				
				//////////////////////////
				String imageID = new ImageDao().insertImage(file);
				logger.debug("图片id[" + imageID + "]");
				response.sendRedirect(request.getContextPath()+ "/api/image?id="+imageID);

				return;
				//////////////////////////
				
				
				// 使用工具类
				// FileUtils.copyInputStreamToFile(in,new File(path+"/"+fileName));
				//mm.put("fileName", fileName);
				//mm.put("fileType", fileType);
				//mm.put("size", "" + size);

				//ups.add(mm);
				//file.delete(); //删除临时文件
			}
			//request.setAttribute("ups", ups);
			// 转发
			//response.sendRedirect(request.getContextPath()+ "/api/image?id=5acd8595-b575-48ef-87d5-081277048716");
			//request.getRequestDispatcher("/api/image?id=5acd8595-b575-48ef-87d5-081277048716").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
