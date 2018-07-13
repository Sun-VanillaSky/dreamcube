<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/_header.css" />

	<!-- 顶上的横幅-->

	<div class="page-header">
		<h1>梦想立方
			<small>用一场行走，开启孩子们路上的“梦想立方”</small>
		</h1>
	</div>

	<header class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<!-- 小屏上最左边的连接 跳到主页-->
				<a class="navbar-brand " href="${pageContext.request.contextPath }/">梦想立方</a>
			</div>
			<div class="navbar-collapse collapse" role="navigation">
				<ul class="nav navbar-nav">

					<li>
						<a id="tab_about" href="${pageContext.request.contextPath }/about" target=“”>关于我们</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/product" target=“”>研学产品</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/news" target=“”>最新动态</a>
					</li>
					<li>
						<a id="tab_contact" href="${pageContext.request.contextPath }/contact" target=“”>联系我们</a>
					</li>

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li >
						<!-- 我觉得可以在这加一个搜索 -->
						<div class="input-group">
				
							<input type="text" class="form-control" placeholder="搜索..">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">Go!</button>
							</span>
						</div>
						<!-- /.input-group -->
					</li>
				</ul>
			</div>
		</div>
	</header>