<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>uncheckedHouse</title>
<style type="text/css">
#table td input {
	border: 1px solid blue;
	width: 111px;
}
</style>
</head>
<body>
	<div align="center">
		<table border="1" id="table">
			<tr>
				<th>房间ID</th>
				<th>用户ID</th>
				<th>房间名</th>
				<th>出租类型</th>
				<th>房屋类型</th>
				<th>面积</th>
				<th>可容纳房客数</th>
			</tr>
			<s:iterator value="houses">
				<tr>
					<td><input type="text" value="<s:property value="id" />" />
					</td>
					<td><input type="text" value="<s:property value="user_id" />" />
					</td>
					<td><input type="text" value="<s:property value="name" />" />
					</td>
					<td><input type="text" value="<s:property value="renttype" />" />
					</td>
					<td><input type="text" value="<s:property value="kind" />" />
					</td>
					<td><input type="text" value="<s:property value="area" />" />
					</td>
					<td><input type="text" value="<s:property value="guestnum" />" />
					</td>
				</tr>
			</s:iterator>
		</table>
		<s:url id="url_pre" value="allUncheckedHouse_list.action">
			<s:param name="pageNow" value="pageNow-1"></s:param>
		</s:url>

		<s:url id="url_next" value="allUncheckedHouse_list.action">
			<s:param name="pageNow" value="pageNow+1"></s:param>
		</s:url>

		<s:a href="%{url_pre}">上一页</s:a>

		<s:iterator value="houses" status="status">
			<s:url id="url" value="allUncheckedHouse_list.action">
				<s:param name="pageNow" value="pageNow" />
			</s:url>
		</s:iterator>

		<s:a href="%{url_next}">下一页</s:a>
	</div>
</body>
</html>