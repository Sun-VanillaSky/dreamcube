package com.dreamcube.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dreamcube.commons.util.http.HttpUtils;



@WebServlet("/news" )  
public class NewsController  extends HttpServlet {

	private static final long serialVersionUID = 7330800718341016554L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 基础设置
		HttpUtils.defaultServletSetting(req, resp);
		
		 req.getRequestDispatcher("/news.jsp").forward(req,resp);
	}
	
	
	
}
