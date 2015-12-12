<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<style type="text/css">
          body {margin-left: 500px;}
	</style>
		<base href="<%=basePath%>">

		<title>My JSP 'user_add.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script src="scrips" type="text/javascript"> </script>

		<script>
		  function showtip1(){   //获得焦点后提示
		    var t=document.getElementById("tip1");
		    t.innerHTML="用户名长度至少6位";
		  }
		  
		  function showtip2(){   //获得焦点后提示
		    var t=document.getElementById("tip2");
		    t.innerHTML="密码长度至少6位";
		  }
		  
		  function showtip3(){   //获得焦点后提示
		    var t=document.getElementById("tip3");
		    t.innerHTML="必须和上面的密码一致";
		  }
		  
		  function showtip4(){   //获得焦点后提示
		    var t=document.getElementById("tip4");
		    t.innerHTML="请输入正确的电话号码";
		  }
		  
		  
		  function check1(){      //用户名失去焦点
		    var u=document.getElementById("username");
		    var t=document.getElementById("tip1");    
		    if(u.value.length<6) {
		      t.innerHTML="错误：用户名长度不足六位";
		      return false;
		    }
		    else{
		      t.innerHTML="OK";
		      return true;
		    }
		  }
		  
		  
		  function check2(){      //用户名失去焦点
		    var u=document.getElementById("pwd");
		    var t=document.getElementById("tip2");    
		    if(u.value.length<6) {
		      t.innerHTML="错误：密码长度不足六位";
		      return false;
		    }
		    else{
		      t.innerHTML="OK";
		      return true;
		    }
		  }
		  
		  function check3(){      //用户名失去焦点
		    var u1 = document.getElementById("pwd").value;
		    var u2 = document.getElementById("checkpwd").value;

		    var t=document.getElementById("tip3");    
		    if(u1!=u2) {
		      t.innerHTML="错误：与上面密码不一致";
		      return false;
		    }
		    else{
		      t.innerHTML="OK";
		      return true;
		    }
		  }
		  
		  function check4(){       //email失去焦点
		    var u=document.getElementById("tel");
		    var t=document.getElementById("tip4");    
		    var reg=/^0{0,1}(13[0-9]|15[0-9]|18[6-8])[0-9]{8}$/;
		    if(u.value==""||!reg.test(u.value)) {
		      t.innerHTML="错误：电话号码格式不正确";
		      return false;
		    }
		    else{
		      t.innerHTML="OK";
		      return true;
		    }
		  }

		 function check(){
		   if(check1()&&check2()&&check3()&&check4())
		   f1.submit();
		 }
</script>
	</head>

	<body >
		<h3><font size="7">用户注册</font> 
		</h3>
		<s:form name = "f1" action="user_add" method="post" namespace="/" >
			<table>
			<TR>
				<TD colSpan=2 height=35></TD>
				</TR>
				<tr>
					<td> 
						用户名：
					</td>
					<td>
						<input type="text" id = "username" name="name" onfocus = "showtip1()" onblur = "check1()" >
					</td>
					<td><span id="tip1" style="color:red;">*</span></td>
				</tr>
				<tr>
					<td>
						密&nbsp;&nbsp;&nbsp;&nbsp;码：
					</td>
					<td>
						<input type="password" id = "pwd" name="password" onfocus = "showtip2()" onblur = "check2()">
					</td>
					<td><span id="tip2" style="color:red;">*</span></td>
				</tr>
				<tr>
					<td>
						确认密码：
					</td>
					<td>
						<input type="password" id = "checkpwd" name="checkpwd" onfocus = "showtip3()" onblur = "check3()">
					</td>
					<td><span id="tip3" style="color:red;">*</span></td>
				</tr>
				<tr>
					<td>
						性&nbsp;&nbsp;&nbsp;&nbsp;别：
					</td>
					<td>
						<input type="radio" name="sex" value="1" checked="checked">男
            			<input type="radio" name="sex" value="2">女  
					</td>
				</tr>
				<tr>
					<td>
						电话号码：
					</td>
					<td>
						<input type="text" id = "tel" name="mobile" onfocus = "showtip4()" onblur = "check4()">
					</td>
					<td><span id="tip4" style="color:red;">*</span></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="button" value="注册" onclick="check()">
					</td>
				</tr>
			</table>
		</s:form>
	</body>
</html>
