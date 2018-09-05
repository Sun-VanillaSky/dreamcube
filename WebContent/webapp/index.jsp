<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

  <!DOCTYPE html >
  <html>

  <head>
    <meta charset="utf-8">
    <title>梦想立方</title>



    <meta http-equiv="Content-Security-Policy" content="default-src * 'self' 'unsafe-inline' 'unsafe-eval' data: gap: content:">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui, viewport-fit=cover">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <meta name="theme-color" content="#2196f3">
    <meta name="format-detection" content="telephone=no">
    <meta name="msapplication-tap-highlight" content="no">

    <!-- Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/commons/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/commons/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/commons/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/css/framework7.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/css/icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/css/app.css">


  </head>

  <body>
    <div id="app">
      <!-- Status bar overlay for fullscreen mode-->
      <div class="statusbar"></div>
      <!-- Left panel with cover effect-->
      <%@include file="./_left_panel.jsp"  %>
  
      <!-- 右侧菜单-->
     <%@include file="./_right_panel.jsp"  %>
      

      <!-- 主视图 -->
      <div class="view view-main ios-edges">
        <!-- Page, data-name contains page name which can be used in callbacks -->
        <div class="page" data-name="home">
          <!-- 上部导航 -->
          <div class="navbar ">
            <div class="navbar-inner  d-flex">
              <div class="">
                <a href="#" class="link icon-only panel-open" data-panel="left">
                  <svg height="24" viewBox="0 0 12 16" version="1.1" width="18" aria-hidden="true">
                    <path fill-rule="evenodd" d="M11.41 9H.59C0 9 0 8.59 0 8c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zm0-4H.59C0 5 0 4.59 0 4c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zM.59 11H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1H.59C0 13 0 12.59 0 12c0-.59 0-1 .59-1z"></path>
                  </svg>
                </a>
              </div>
              <div style="flex: auto"></div>
              <!--伸缩盒子-->
              <div>首页</div>
              <div style="flex: auto"></div>
              <!--伸缩盒子-->
              <div>
                <a href="#" class="link icon-only panel-open" data-panel="right">
                  <svg height="24" viewBox="0 0 12 16" version="1.1" width="18" aria-hidden="true">
                    <path fill-rule="evenodd" d="M11.41 9H.59C0 9 0 8.59 0 8c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zm0-4H.59C0 5 0 4.59 0 4c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zM.59 11H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1H.59C0 13 0 12.59 0 12c0-.59 0-1 .59-1z"></path>
                  </svg>
                </a>
              </div>
            </div>
          </div><!--.navbar-->

          <!-- Scrollable page content-->
          <div class="page-content">
            <div class="block block-strong">
              <p>Here is your blank Framework7 app. Let's see what we have here.</p>
            </div>

            <div class="block-title">Navigation</div>
            <div class="list">
              <ul>
                <li>
                  <a href="/about/" class="item-content item-link">
                    <div class="item-inner">
                      <div class="item-title">About</div>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="/form/" class="item-content item-link">
                    <div class="item-inner">
                      <div class="item-title">Form</div>
                    </div>
                  </a>
                </li>
              </ul>
            </div>

            <div class="block-title">Modals</div>
            <div class="block block-strong">
              <div class="row">
                <div class="col-50">
                  <a href="#" class="button button-raised button-fill popup-open" data-popup="#my-popup">Popup</a>
                </div>
                <div class="col-50">
                  <a href="#" class="button button-raised button-fill login-screen-open" data-login-screen="#my-login-screen">Login Screen</a>
                </div>
              </div>
            </div>

            <div class="block-title">Panels</div>
            <div class="block block-strong">
              <div class="row">
                <div class="col-50">
                  <a href="#" class="button button-raised button-fill panel-open" data-panel="left">Left Panel</a>
                </div>
                <div class="col-50">
                  <a href="#" class="button button-raised button-fill panel-open" data-panel="right">Right Panel</a>
                </div>
              </div>
            </div>

            <div class="block-title searchbar-hide-on-search">Page Loaders & Router</div>
            <div class="list links-list searchbar-hide-on-search">
              <ul>
                <li>
                  <a href="/page-loader-template7/vladimir/123/about-me/1/?start=0&end=30#top">Template7 Page</a>
                </li>
                <li>
                  <a href="/page-loader-component/vladimir/123/about-me/1/?start=0&end=30#top">Component Page</a>
                </li>
                <li>
                  <a href="/load-something-that-doesnt-exist/">Default Route (404)</a>
                </li>
                <li>
                  <a href="/request-and-load/user/123456/">Request Data & Load</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <!-- Popup -->
      <div class="popup" id="my-popup">
        <div class="view">
          <div class="page">
            <div class="navbar">
              <div class="navbar-inner">
                <div class="title">Popup</div>
                <div class="right">
                  <a href="#" class="link popup-close">Close</a>
                </div>
              </div>
            </div>
            <div class="page-content">
              <div class="block">
                <p>Popup content goes here.</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Login Screen -->
      <div class="login-screen" id="my-login-screen">
        <div class="view">
          <div class="page">
            <div class="page-content login-screen-content">
              <div class="login-screen-title">Login</div>
              <div class="list">
                <ul>
                  <li class="item-content item-input">
                    <div class="item-inner">
                      <div class="item-title item-label">Username</div>
                      <div class="item-input-wrap">
                        <input type="text" name="username" placeholder="Your username">
                      </div>
                    </div>
                  </li>
                  <li class="item-content item-input">
                    <div class="item-inner">
                      <div class="item-title item-label">Password</div>
                      <div class="item-input-wrap">
                        <input type="password" name="password" placeholder="Your password">
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="list">
                <ul>
                  <li>
                    <a href="#" class="item-link list-button login-button">Sign In</a>
                  </li>
                </ul>
                <div class="block-footer">Some text about login information.
                  <br>Click "Sign In" to close Login Screen</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Cordova -->
    <!--
  <script src="cordova.js"></script>
  -->

    <!-- Framework7 library -->
    <script src="${pageContext.request.contextPath }/webapp/js/framework7.min.js"></script>

    <!-- App routes -->
    <script src="${pageContext.request.contextPath }/webapp/js/routes.js"></script>

    <!-- Your custom app scripts -->
    <script src="${pageContext.request.contextPath }/webapp/js/app.js"></script>
  </body>

  </html>