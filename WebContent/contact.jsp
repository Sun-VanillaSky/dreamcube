<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html >
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>联系我们</title>

		<!-- 默认样式-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/commons/css/default.css">
		<!-- Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/commons/bootstrap/3.3.7/css/bootstrap.min.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/commons/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/commons/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<script>
		
		
		
		</script>

		<style type="text/css">
			/* 一种高亮样式 */
		
			.highlight {
				padding: 9px 14px;
				margin-bottom: 14px;
				background-color: #f7f7f9;
				border: 1px solid #e1e1e8;
				border-radius: 4px;
			}
		</style>
	</head>

	<body>

		<!-- header -->
		<%@ include file="/_header.jsp"  %>
		
		<!--  正文区 -->
		<div class="container" style="margin-top: 40px">

				<div class="panel panel-default highlight" >
					<!-- 发表信息列表 -->
					<div class=" panel-body  media ">
						<div class="media-left media-middle">
							<a href="#">
								<img style="max-height: 64px;max-width: 64px" class="media-object" src="https://p1.ssl.qhmsg.com/t011fd31ba9be750f13.png"
								 alt="...">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">Middle aligned media</h4>
							Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
							in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis
							in faucibus.
						</div>
					</div>
				</div>
				
				<div class="panel panel-default highlight">
					<!-- 发表信息列表 -->
					<div class=" panel-body  media ">
						<div class="media-left media-middle">
							<a href="#">
								<img style="max-height: 64px;max-width: 64px" class="media-object" src="https://p1.ssl.qhmsg.com/t011fd31ba9be750f13.png"
								 alt="...">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">Middle aligned media</h4>
							Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
							in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis
							in faucibus.
						</div>
					</div>
				</div>
				
				<div class="panel panel-default highlight">
					<!-- 发表信息列表 -->
					<div class=" panel-body  media ">
						<div class="media-left media-middle">
							<a href="#">
								<img style="max-height: 64px;max-width: 64px" class="media-object" src="https://p1.ssl.qhmsg.com/t011fd31ba9be750f13.png"
								 alt="...">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">Middle aligned media</h4>
							Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
							in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis
							in faucibus.
						</div>
					</div>
				</div>
				
				<div class="panel panel-default highlight">
					<!-- 发表信息列表 -->
					<div class=" panel-body  media ">
						<div class="media-left media-middle">
							<a href="#">
								<img style="max-height: 64px;max-width: 64px" class="media-object" src="https://p1.ssl.qhmsg.com/t011fd31ba9be750f13.png"
								 alt="...">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">Middle aligned media</h4>
							Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
							in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis
							in faucibus.
						</div>
					</div>
				</div>

		</div>

		<!-- footer -->
		<%@ include file="/_footer.jsp"  %>
	</body>

	<script>


		jQuery(document).ready(function () {


			// 改变当前tab颜色
			jQuery("#tab_contact").css("background-color", "#6f5499");

		});


	</script>

	</html>