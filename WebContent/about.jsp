<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html >
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>关于我们</title>

		<!-- 默认样式-->
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
		<%@ include file="/index_header.jsp"  %>
		<div class="container">
			<div class="row">
			
				<div class="col-sm-12 col-md-4 col-lg-4">
					<div>关于我们</div>
					<div>公司资质</div>
					<div>公司简介</div>
				</div>
			
				<div class="col-sm-12 col-md-8 col-lg-8" style="background-color:red" >
					公司简介《ssss》<br>
				</div>
			</div>
		
		</div>
			<!-- <div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-4 col-lg-4">
						<div></div>
						<div></div>
						<div></div>
					</div>
					<div class="col-sm-12 col-md-6  col-lg-6 col-lg-offset-1">
						<div class="row about">
							<div class="col-sm-6 col-md-4">

							</div>
							<div class="col-sm-6  col-md-4">

							</div>

						</div>

					</div>
				</div>
			</div> -->














			<!-- footer -->
			<%@ include file="/index_footer.jsp"  %>
	</body>

	<script>


		jQuery(document).ready(function () {


			// 改变当前tab颜色
			jQuery("#tab_about").css("background-color", "#2898a1");

		});


	</script>

	</html>