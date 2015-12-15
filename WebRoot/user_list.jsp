<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#table {
	border: 1px solid red;
}

#table td {
	border: 1px solid black;
}

#table td input {
	border: 1px solid blue;
	width: 110px;
}
</style>
</head>
<body>
	<table id="table">
		<tbody>
			<tr>
				<td>用户名</td>
				<td>性别</td>
				<td>电话</td>
				<td>电子邮箱</td>
				<td>地址</td>
				<td>图像</td>
				<td>操作</td>
			</tr>
			<s:iterator value="#users">

				<tr>
					<td><input type="text" value="<s:property value="name" />" />
					</td>
					<td><input type="text" value="<s:property value="sex" />" />
					</td>
					<td><input type="text" value="<s:property value="mobile" />" />
					</td>
					<td><input type="text" value="<s:property value="email" />" />
					</td>
					<td><input type="text" value="<s:property value="address" />" />
					</td>
					<td><input type="text" value="<s:property value="picture" />" />
					</td>
					<td><button>修改</button>
						<a href="<%=path%>/user_del.action?id=<s:property value="id" />">删除</a></td>

					<!-- 					<td><s:property value="sex" /></td>
					<td><s:property value="mobile" /></td>
					<td><s:property value="email" /></td>
					<td><s:property value="address" /></td>
					<td><s:property value="picture" /></td>
					<td><button>修改</button><button >删除</button></td> -->
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<s:debug />
</body>
</html>