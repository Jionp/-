<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>起行</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<!-- Google Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic|Roboto:400,300,700' rel='stylesheet' type='text/css'>
	<!-- Animate -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<link rel="stylesheet" href="css/indexstyle.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<style type="text/css">
		.dl{
			display: none;
		}
	</style>
	
	</head>
	<body>
	<div id="fh5co-offcanvas">
		<a href="#" class="fh5co-close-offcanvas js-fh5co-close-offcanvas"><span><i class="icon-cross3"></i> <span>Close</span></span></a>
		<div class="fh5co-bio">
			<figure>
				<img src="fileup/${user.photo}" alt="Free HTML5 Bootstrap Template" class="img-responsive">
			</figure>
			<h3 class="heading">About Me</h3>
			<h2 id="username">${user.username}</h2>
			<p>${user.speak}</p>
			<ul class="fh5co-social">
				<li><a href="#"><i class="icon-twitter"></i></a></li>
				<li><a href="#"><i class="icon-facebook"></i></a></li>
				<li><a href="#"><i class="icon-instagram"></i></a></li>
			</ul>
		</div>

		<div class="fh5co-menu">
			<div class="fh5co-box">
				<h3 class="heading">菜单</h3>
				<ul>
					<li class="qdl"><a class="bd" href="index?jsp=grxx&username=${user.username}">个人信息</a></li>
					<li class="qdl"><a class="bd" href="index?jsp=gwc&username=${user.username}">购物车</a></li>
					<li class="qdl"><a class="bd" href="index?jsp=lyb&username=${user.username}">留言板</a></li>
					<li class="qdl"><a class="bd" href="index?jsp=dd&username=${user.username}">订单</a></li>
					<li class="qdl"><a class="bd" href="index?jsp=sc&username=${user.username}">收藏</a></li>
				</ul>
			</div>
			<div class="fh5co-box">
				<h3 class="heading">搜索</h3>
				<form action="index" class="action">
					<div class="form-group">
						<input type="text" name="ss" class="form-control" placeholder="景点">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- END #fh5co-offcanvas -->
	<header id="fh5co-header">
		
		<div class="container-fluid">

			<div class="row">
				<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
				<ul class="fh5co-social">
					<li><a id="changedl" href="login.jsp">登录</a></li>
					<li><a href="register.jsp">注册</a></li>
					<li><a href="index?jsp=index">注销</a></li>
				</ul>
				<div class="col-lg-12 col-md-12 text-center">
					<h1 id="fh5co-logo">起行 <sup>旅游</sup></h1>
				</div>

			</div>
		
		</div>

	</header>
    
	<!-- END #fh5co-header -->
	<div class="container-fluid">
		<div class="row fh5co-post-entry">
			<!--循环-->
			<s:set name="flag" value="0" id="flag"/>
			<s:iterator value="travels" id="travels">  
			   <article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
					<figure>
						<a href="index?username=${user.username}&jsp=travelone&goodsid=<s:property value="#travels.goodsid"/>"><img src="fileup/<s:property value="#travels.bigphoto"/>" alt="Image" class="img-responsive"></a>
					</figure>
					<span class="fh5co-meta"><a href="index?username=${user.username}&jsp=travelone&goodsid=<s:property value="#travels.goodsid"/>">旅游 &amp; 交友</a></span>
					<h2 class="fh5co-article-title"><a href="index?username=${user.username}&jsp=travelone&goodsid=<s:property value="#travels.goodsid"/>"><s:property value="#travels.name"/></a></h2>
					<span class="fh5co-meta fh5co-date">价格：<s:property value="#travels.price"/></span>
				</article>
				<s:set name="flag" value="#flag+1" id="flag"/>
				<div id="changeclass" ></div>
			</s:iterator>
			
			
			<!-- <div class="clearfix visible-xs-block"></div>
			
			<div class="clearfix visible-lg-block visible-md-block visible-sm-block visible-xs-block"></div> -->
			


			
		</div>
	</div>

	<footer id="fh5co-footer">
		<p><small>&copy; 2016. Magazine Free HTML5. All Rights Reserverd. <br> More Templates <a href="#" target="_blank" title="模板之家">起行工作室</a> </small></p>
	</footer>


	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
	<script type="text/javascript">
		var a = "#flag";
		if(a%4==0){
			$("#changeclass").addClass("clearfix visible-lg-block visible-md-block visible-sm-block visible-xs-block");
		}else if(a%2==0){
			$("#changeclass").addClass("clearfix visible-xs-block");
		}
		if($("#username").text()!=""){
			$("#changedl").addClass("dl");	
		}else{
			$('.bd').attr('href','#');
			$(".qdl").click(function(){
					alert("请登录");
				});
			$("#changedl").removeClass();
		}
		
		/* $('.fh5co-box').keydown(function(e){
			if(e.keyCode==13){
			   $('.action').attr('action', $("form").attr("action")+'&jsp=ss&username='+$("#username").text());
			}
		}); */
	</script>
	</body>
</html>


