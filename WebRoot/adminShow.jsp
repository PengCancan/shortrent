<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'adminShow.jsp' starting page</title>

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
</style>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" type="text/css" href="css/easyui.css">
<script type="text/javascript" src="script/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="script/jquery.easyui.min.js"></script>

<script type="text/javascript">
	function addTab(newtitle, href) {
		if (href) {
			var newContent = '<iframe scrolling="auto" frameborder="0"  			src="'
					+ href + '" style="width:100%;height:100%;"></iframe>';
		} else {
			var newContent = '未实现';
		}
		$('#tt').tabs('add', {
			title : newtitle,
			content : newContent,
			closable : true
		});
	}
</script>

</head>

<body class="easyui-layout">
	<!--layout布局-->
	<div region="north" split="false"
		style="background: none no-repeat; height: 50px;">
		<div align="left">
			<font size="4" color="#0000ff" face="华文楷体">欢迎您 <s:property
					value="username" /></font><a href="<%=path%>">回到首页</a>
		</div>
	</div>
	<div region="west" split="false" title="菜单"
		style="background: none no-repeat; width: 150px;">
		<!--west为导航菜单-->
		<div class="easyui-accordion" fit="true" border="false"
			style="background: none no-repeat; width: 150px;">
			<div title="房屋搜索" iconCls="icon-dir">
				<center>
					<br /> <a href="javascript:addTab('搜索房屋','index.jsp')">搜索房屋</a> <br />
				</center>
			</div>
			<div title="房屋管理" iconCls="icon-dir">
				<center>
					<br /> <a
						href="javascript:addTab('未审核房屋','<s:url value="allUncheckedHouse_list.action"/>')">未审核房屋</a>
					<br /> <br /> <a href="javascript:addTab('已发布房屋','	')">已通过审核房屋</a>
					<br /> <br /> <a href="javascript:addTab('审核不合格房屋','')">审核不合格房屋</a>
					<br />
				</center>
			</div>

			<div title="信息管理" iconCls="icon-dir">
				<center>
					<br /> <a
						href="javascript:addTab('用户管理','<s:url value="user_list.action"/>')">用户管理</a>
					<br />
				</center>
			</div>
		</div>
	</div>
	<div region="center" title="" split="false" style="">
		<div id="tt" class="easyui-tabs" fit=true
			style="background: none no-repeat;">
			<!--Tab栏位于center区域-->
		</div>
	</div>
</body>
</html>
