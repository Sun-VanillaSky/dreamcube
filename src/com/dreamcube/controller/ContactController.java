package com.dreamcube.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dreamcube.commons.util.http.HttpUtils;

/**
 * 
 * 联系我们
 * 
 * */

@WebServlet("/contact" )  
public class ContactController  extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 基础设置
		HttpUtils.defaultServletSetting(req, resp);
		
		 req.getRequestDispatcher("/contact.jsp").forward(req,resp);
	}
	
	
	
}
