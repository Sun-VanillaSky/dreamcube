<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html >
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>关于我们</title>

		<!-- 基础样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/commons/css/default.css">
		<!-- Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/commons/bootstrap/3.3.7/css/bootstrap.min.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/commons/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/commons/bootstrap/3.3.7/js/bootstrap.min.js"></script>



		<!-- 默认样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/index.css">
		<script type="text/javascript">



		</script>

	</head>

	<body>

		<!-- header -->
		<%@ include file="/_header.jsp"  %>
		
		<!--  正文区 -->
		<div class="container" style="margin-top: 40px">
			<div class=" row">
		
		
				<div class="col-sm-12 col-md-4 col-lg-4">
		
					<ul class="nav nav-pills nav-stacked">
						<li role="presentation" class="active">
							<a href="#">关于我们</a>
						</li>
						<li role="presentation">
							<a href="#">公司资质</a>
						</li>
						<li role="presentation">
							<a href="#">公司简介</a>
						</li>
					</ul>
				</div>
		
				<div class="col-sm-12 col-md-8 col-lg-8" style="background-color:red;min-height: 1800px">
		
					fwefewfwe
					<br> we
					<br> fw
					<br> export default class wef
					<br> wefwe extends baseclassNa
					<br>
					<br>
		
				</div>
			</div>
		</div>


			<!-- footer -->
			<%@ include file="/_footer.jsp"  %>
	</body>

	<script>


		jQuery(document).ready(function () {


			// 改变当前tab颜色
			jQuery("#tab_about").css("background-color", "#2898a1");

		});


	</script>

	</html>