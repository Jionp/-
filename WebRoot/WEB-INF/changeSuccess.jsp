<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
	/* 	User user = null;
	 if (request.getSession().getAttribute("checkUser") != null) {
	 user = (User) request.getSession().getAttribute("checkUser");
	 out.print(user.getUserName());
	 out.print("<br>");
	 }

	 int change = 0;
	 if (request.getSession().getAttribute("changeUser") != null) {
	 change = (Integer) request.getSession().getAttribute(
	 "changeUser");
	 out.print(change);
	 out.print("<br>");
	 }

	 int add = 0;
	 if (request.getSession().getAttribute("addUser") != null) {
	 add = (Integer) request.getSession().getAttribute("addUser");
	 out.print(add);
	 out.print("<br>");
	 }

	 int remove = 0;
	 if (request.getSession().getAttribute("removeUser") != null) {
	 remove = (Integer) request.getSession().getAttribute(
	 "removeUser");
	 out.print(remove);
	 out.print("<br>");
	 } */
%>

<!-- 等待两秒跳转页面 -->
<meta http-equiv="refresh" content="2;url='./admins?jsp=succ'">

<script type="text/javascript" src="./js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="./js/forwait.js"></script>
<link type="text/css" rel="stylesheet" href="./css/forwait.css" />
<style type="text/css">
.titlebox{
	width:600px;
	height:200px;
    border: 5px solid rgba(95,199,212,0.5);
    background-color: wheat;
    border-radius: 10px;
    opacity: 0.9; 	
	position: absolute;
	top: 40%;
	left: 29%;
	line-height: 200px;
	text-align: center;
	font-size: 30px;
	color:#e69138;
	font-family: "微软雅黑";
}

</style>
<head>
<base href="<%=basePath%>">

<title>操作成功等待页面</title>


</head>

<body>
	<!-- 倒计时特效 -->
	<div class="game_time">
		<div class="hold">
			<div class="pie pie1"></div>
		</div>

		<div class="hold">
			<div class="pie pie2"></div>
		</div>

		<div class="bg"></div>
		<div class="time"></div>
	</div>

	<script type="text/javascript">
		countDown();
	</script>


	<div class="titlebox">
		操作成功,两秒后返回主页面...
	</div>


</body>
</html>

