<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>房屋管理 - 轻松短租网</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="../css/style.css" type="text/css" rel="stylesheet" />
		<link href="../css/reg.css" type="text/css" rel="stylesheet" />
		<link href="../css/house.css" type="text/css" rel="stylesheet" />
	</head>

	<body>
		<div id="wrapper">
			<!-- header -->
			<div id="head">
				<h1 class="f-left">
					<a href="index.htm">短租网</a>
				</h1>
				<span class="chat"></span>
				<ul>
					<li>
						<a href="register.htm">注册</a>
					</li>
					<li>
						｜
					</li>
					<li>
						<a href="login.htm">登录</a>
					</li>
					<li>
						｜
					</li>
					<li>
						<a href="create.htm">免费创建房屋</A>
					</li>
				</ul>
			</div>

			<!-- body -->
			<div id="cols">

				<div class="index_zbg">
					<div class="reg-main">
						<div class="reg-center">
							<div class="reg-left">
								<form id="loginform" name="loginform" action="#" method="post">
									
									<div>									
										<span id="star_color">*</span>房屋名称:
										<input type="text" name="houseName"/>	
																				
										<span id="star_color">*</span>全额退款日：
										<input type="text" name="fullRefundDate"/>		
									</div>
									
									
									<div>
										<span>发票：</span>
										<input name="invoice" type="radio" value="" />提供
										<input name="invoice" type="radio" value="" />不提供
										
										<span id="star_color">*</span>日租价：
										<input name="dailyPrice" type="text"/>元/天								
									
									</div>
									
									
									<div>
										出租类型:
										<input name="rentType" type="radio" value="" />整租
										<input name="rentType" type="radio" value="" />单间
										<input name="rentType" type="radio" value="" />席位
										
										<span id="star_color">*</span>房屋描述：							
										<textarea rows="3" cols="15"></textarea>
										
									
									</div>
									
									
									<div>
										房屋类型：
										<select>
											<option style="width:250px">XX1</option>
											<option style="width:250px">XX2</option>
											<option style="width:250px">XX3</option>
											<option style="width:250px">XX4</option>
											<option style="width:250px">XX5</option>
										</select>
																			
									
									
									</div>
									
									
										

									
								</form>
								<div class="clear"></div>
							</div>

							<div class="clear"></div>
						</div>

					</div>


				</div>

			</div>
			
			<!-- footer -->
			<div id="footer">
				<ul>
					<li>
						<a target="_blank" href="#">管理员登录</a>
					</li>
					<li>
						｜
					</li>
					<li>
						<a target="_blank" href="#">关于轻松短租</a>
					</li>
					<li>
						｜
					</li>
					<a target="_blank" href="#">友情链接</a>
					<li>
						｜
					</li>
					<a target="_blank" href="#">全部城市</a>
					<li>
						｜
					</li>
					<a target="_blank" href="#">精彩专题</a>
					<li>
						｜
					</li>
					<li>
						<a target="_blank" href="#">《短租网服务协议》</a>
					</li>
					<li>
						｜
					</li>
					<li>
						<a target="_blank" href="#">《隐私条款》</a>
					</li>
					<li>
						｜
					</li>
					<li>
						<a target="_blank" href="#">《房客规则》</a>
					</li>
					<li>
						｜
					</li>
					<li>
						<a target="_blank" href="#">《房东规则》</a>
					</li>
					<li>
						｜
					</li>
					<li>
						<a target="_blank" href="#">帮助</a>
					</li>
				</ul>
				
			</div>
		</div>
	</body>
</html>