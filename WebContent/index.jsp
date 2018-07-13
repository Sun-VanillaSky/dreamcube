<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html >
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>首页</title>

		<!-- 默认样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/commons/css/base.css">
		<!-- Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/commons/bootstrap/3.3.7/css/bootstrap.min.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/commons/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/commons/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<script type="text/javascript">



		</script>
	

	</head>

	<body>

		<!-- header -->
		<%@include file="/_header.jsp"  %>


			<!-- section -->
			<%@include file="/_section.jsp"  %>

				<!-- 正文 开始 -->
				峨峨峨 取向香甜个
				<!-- 正文 结束 -->


				<!-- footer -->
				<%@include file="/_footer.jsp"  %>
	</body>

	<script>

		jQuery(document).ready(function () {


			// 改变当前tab颜色
			jQuery("#tab_index").css("background-color", "#2898a1");

		});
	</script>

	</html>