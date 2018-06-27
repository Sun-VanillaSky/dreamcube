package com.dreamcube.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dreamcube.commons.util.http.HttpUtils;


@WebServlet("/about" )  
public class AboutController  extends HttpServlet {

	private static final long serialVersionUID = 7055328045764070496L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 基础设置
		HttpUtils.defaultServletSetting(req, resp);
		
		
		
		
		
		
		
		
		
		 req.getRequestDispatcher("/about.jsp").forward(req,resp);
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@Override
	protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet( req,  resp);
	}

	
	
	
}
