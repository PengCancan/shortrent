  <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

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

<title>My JSP 'adminlogin.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<center>
		<s:form action="login" method="post" namesapce="/">
			<table width="295" height="88">
				<tr>
					<TD><TABLE height=600 cellPadding=0 width=240 border=0>

							<TBODY>
								<TR>
									<TD colSpan=2 height=35 align="center"><font size="7"><br>
										<br>
									</font></TD>
								</TR>
								<TR>
									<TD width="100"></TD>
									<TD width="700">
										<center>
											<TABLE cellSpacing=0 cellPadding=2 border=1>
												<TBODY>
													<TR>
														<TD colSpan=2 height=50></TD>
													</TR>
													<TR>
														<TD style="HEIGHT: 28px" width=80>用户名：</TD>
														<TD style="HEIGHT: 28px" width=150><INPUT type="text"
															name="username" style="WIDTH: 130px"></TD>

													</TR>
													<TR>
														<TD style="HEIGHT: 28px">密码：</TD>
														<TD style="HEIGHT: 28px"><INPUT type="password"
															name="password" style="WIDTH: 130px"></TD>

													</TR>
													<TR>

														<TD style="HEIGHT: 28px">&nbsp;</TD>
													</TR>
													<TR>
														<TD></TD>
														<TD><input type="submit" value="登录"></TD>
														<TD></TD>
													<TR>

														<TD style="HEIGHT: 28px">&nbsp;</TD>
													</TR>


												</TBODY>
											</TABLE>
										</center></TD>
								</TR>
							</TBODY>
						</TABLE></TD>
				</tr>
			</table>
		</s:form>
	</center>
</body>
</html>