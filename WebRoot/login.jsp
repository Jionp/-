<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>起行登录页面</title>
<link href="./Wopop_files/style_log.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css" href="./Wopop_files/style.css">
<link rel="stylesheet" type="text/css"
	href="./Wopop_files/userpanel.css">
<link rel="stylesheet" type="text/css"
	href="./Wopop_files/jquery.ui.all.css">

</head>

<body class="login" mycollectionplug="bind">
	<div class="login_m">
		<div class="login_logo">
			<img src="./Wopop_files/logo.png" width="196" height="46">
		</div>
		<div class="login_boder">

			<div class="login_padding" id="login_model">

				<form method="post" action="login">
					<s:actionerror/>
					<h2>用户名</h2>
					<label> <input type="text" id="username" name="username"
						class="txt_input txt_input2"
						onfocus="if (value ==&#39;用户名&#39;){value =&#39;&#39;}"
						onblur="if (value ==&#39;&#39;){value=&#39;用户名&#39;}" value="用户名">
					</label>
					<h2>密码</h2>
					<label> <input type="password" name="password" id="userpwd"
						class="txt_input"> </label>
					<p class="forgot">
						<a id="iforget" href="register.jsp">注册</a>
					</p>
					<div class="rem_sub">
						<!--<div class="rem_sub_l">
					  <input type="checkbox" name="checkbox" id="save_me">
					   <label for="checkbox">Remember me</label>
					   </div>-->
						<label> <input type="submit" class="sub_button"
							name="button" id="button" value="登录" style="opacity: 0.7;">
						</label>
					</div>

				</form>
			</div>
			

			<div id="forget_model" class="login_padding" style="display:none">
				<br>
				<h1>Forgot password</h1>
				<br>
				<div class="forget_model_h2">(Please enter your registered
					email below and the system will automatically reset users’ password
					and send it to user’s registered email address.)</div>
				<label> <input type="text" id="usrmail"
					class="txt_input txt_input2"> </label>
			</div>

			<!--login_padding  Sign up end-->
		</div>
		<!--login_boder end-->
	</div>
	<!--login_m end-->

	<br>
	<br>
	<p align="center">
		QiXing <a href="index?jsp=index" target="_blank" title="主页">进入主页</a>
	</p>



</body>
</html>
