package com.dreamcube.commons.util.http;

import java.io.UnsupportedEncodingException;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class HttpUtils {

	/**
	 * 编码
	 */
	public final static String ENCODING = "UTF-8";
	
	public static void defaultServletSetting(ServletRequest req, ServletResponse resp) throws UnsupportedEncodingException {
		// 请求和响应的编码
		req.setCharacterEncoding(HttpUtils.ENCODING);
		resp.setCharacterEncoding(HttpUtils.ENCODING);
		
	}
}
