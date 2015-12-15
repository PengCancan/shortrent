
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<style type="text/css">
a:link {
	text-decoration: none;
	color: blue
}

#frame {
	border: 1px solid #cad9ea;
	border-color: black;
	width: 1000px;
	margin-left: auto;
	margin-right: auto;
}

#top {
	border: 1px solid red;
	height: 100px;
}

#content {
	border: 1px solid red;
	height: 500px;
}

#footer {
	border: 1px solid red;
	height: 70px;
	padding-left: 270px;
}

#title {
	text-align: center;
	font-family: 微软雅黑;
	color: maroon;
}

#registandlogin {
	border: 1px solid black;
	width: 140px;
	height: 20px;
	float: right;
	margin-top: -60px;
}

#nav {
	display: block;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

#nav li {
	margin: 0;
	display: inline;
	padding: 0;
	float: left;
}

#slogan {
	text-align: center;
	margin-top: 120px;
	color: fuchsia;
}

#search {
	width: 300px;
	height: 35px;
	border-color: #AAAAAA;
	border-style: solid none solid solid;
	border-width: 1px medium 1px 1px;
	font-size: 16px;
	line-height: 35px;
	color: #57B300;
	padding: 3px 9px 0;
}

#location {
	border: 0px solid red;
	width: 400px;
	height: 35px;
	padding-left: 300px;
}

#search_btn {
	color: #FFFFFF;
	background-color: #5FBA00;
	cursor: pointer;
	float: right;
	width: 100px;
	height: 35px;
	border-color: #459A00;
	border-style: solid;
	border-width: 1px;
	font-family: 微软雅黑;
	font-size: 18px;
	font-weight: bold;
}
</style>
</head>

<body>
	<div id="frame">
		<div id="top">
			<h1 id="title">轻松短租网</h1>

			<div id="registandlogin">
				<ul id="nav">

					<li><a href="<%=path %>/admin/adminlogin.jsp">登录</a>
					</li>
					<li>|</li>
					<li><a href="<%=path %>/user_add.jsp">注册新用户</a>
					</li>

				</ul>

			</div>
		</div>
		<div id="content">

			<div id="slogan">
				<h2>寻找旅行中的家</h2>
			</div>
			<div id="location">
				<input id="search" name="search" type="text" />
				<button id="search_btn">搜索</button>
			</div>
		</div>

		<DIV id="footer">
			<UL id=nav>
				<LI><A class=r2 href="">网站首页 </A> |</LI>
				<LI><A class=r2 href="">产品中心 </A> |</LI>
				<LI><A class=r2 href="">服务中心 </A> |</LI>
				<LI><A class=r2 href="">销售网络 </A> |</LI>
				<LI><A class=r2 href="">新闻中心 </A> |</LI>
				<LI><A class=r2 href="">联系我们 </A> |</LI>
			</UL>
		</DIV>
	</div>
</body>

</html>
