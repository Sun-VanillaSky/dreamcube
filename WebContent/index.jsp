<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html >
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<link rel="shortcut icon" href="/favicon.png" />
		<link rel="bookmark"href="/favicon.png" />
		
		<title>首页</title>

		<!-- 默认样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/commons/css/base.css">
		<!-- Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/commons/bootstrap/3.3.7/css/bootstrap.min.css">
		
		<!-- swiper CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/commons/swiper/css/swiper.min.css">
		
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/commons/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/commons/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<!-- swiper JS-->
		<script type="text/javascript" src="${pageContext.request.contextPath }/commons/swiper/js/swiper.min.js"></script>

		<script type="text/javascript">



		</script>
	

	</head>

	<body>

		<!-- 顶上的横幅-->
	
		<div class="page-header">
			<h1>梦想立方
				<small>用一场行走，开启孩子们路上的“梦想立方”</small>
			</h1>
		</div>


		<!-- header -->
		<%@include file="/_header.jsp"  %>


			<!-- section -->
			<%@include file="/_section.jsp"  %>

		<div class="container">
			<div class="swiper-container ">
				<div class="swiper-wrapper " style="">
					<div class="swiper-slide swiper-slide-active"
						style="width: 1080px;">
						<div class="swiper-zoom-container">
							<img src="${pageContext.request.contextPath }/image/1.jpg">
						</div>
					</div>
					<div class="swiper-slide swiper-slide-active"
						style="width: 1080px;">
						<div class="swiper-zoom-container">
							<img src="${pageContext.request.contextPath }/image/2.png">
						</div>
					</div>
					<div class="swiper-slide swiper-slide-active"
						style="width: 1080px;">
						<div class="swiper-zoom-container">
							<img src="${pageContext.request.contextPath }/image/3.jpg">
						</div>
					</div>
					<div class="swiper-slide swiper-slide-active"
						style="width: 1080px;">
						<div class="swiper-zoom-container">
							<img src="${pageContext.request.contextPath }/image/4.JPG">
						</div>
					</div>
					<div class="swiper-slide swiper-slide-active"
						style="width: 1080px;">
						<div class="swiper-zoom-container">
							<img src="${pageContext.request.contextPath }/image/4.JPG">
						</div>
					</div>
					<div class="swiper-slide swiper-slide-active"
						style="width: 1080px;">
						<div class="swiper-zoom-container">
							<img src="${pageContext.request.contextPath }/image/4.JPG">
						</div>
					</div>
					<div class="swiper-slide swiper-slide-active"
						style="width: 1080px;">
						<div class="swiper-zoom-container">
							<img src="${pageContext.request.contextPath }/image/4.JPG">
						</div>
					</div>
					<div class="swiper-slide swiper-slide-active"
						style="width: 1080px;">
						<div class="swiper-zoom-container">
							<img src="${pageContext.request.contextPath }/image/4.JPG">
						</div>
					</div>


				</div>
				<!-- 如果需要分页器 -->
				<div class="swiper-pagination"></div>
				<!-- 如果需要导航按钮 -->
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
				<!-- 如果需要滚动条 -->
<!-- 				<div class="swiper-scrollbar"></div> -->
			</div>

			<!-- 正文 开始 -->
			<!-- 正文 结束 -->


		</div>


	<!-- footer -->
	<%@include file="/_footer.jsp"  %>
	</body>

	<script>

		jQuery(document).ready(function () {


			// 改变当前tab颜色
			jQuery("#tab_index").css("background-color", "#2898a1");

			
			
		});
		
		
	// 初始化swiper
    var swiper = new Swiper('.swiper-container', {
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });


		
	</script>

	</html>