<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="././css/bootstrapuserone.css" rel="stylesheet" type="text/css" media="all">
<link href="././css/styleuserone.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Skills Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="././js/jquery-1.11.1.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="././js/move-top.js"></script>
<script type="text/javascript" src="././js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling---->
 
</head>
<body>
		<!--start-header-section-->
			
		<!--end header-section-->
			<!--start-study-section-->
			<div class="study-section">
				<div class="container">
					<div class="study-grids">
						<div class="col-md-6 study-grid">
						<h3>新增收货地址..<span>!</span></h3>
						<div class="study1">
						<form action="address?username=${user.username}&jsp=addAddress" method="post" enctype="multipart/form-data">
							<s:actionerror/>
							<p><input type="text" name="name"/><label>( 收件人 )</label> </p>
							<p><input type="text" name="phone"/><label>( 电话 )</label> </p>
							<p><input type="text" name="province"/> <label>( 省份  )</label></p>
							<p><input type="text" name="city" /><label>( 城市  )</label></p>
							<p><input type="text" name="county"/> <label>( 县（区） )</label></p>
							<p><input type="text" name="street"/><label>( 街道 )</label></p>
							<p><textarea rows="3" cols="20" name="address"></textarea><label>( 具体位置 )</label>
							</p>
							<input type="reset" value="取消"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" value="修改"/>
						</form>	
						</div>
						</div>
						<div class="col-md-6 study-grid">
						<h3>已有收货地址..<span>!</span></h3>
						<div class="study2">
						<s:iterator value="addresses" id="addresses">
							<h4>收件人：<s:property value="#addresses.name"/>&nbsp;电话：<s:property value="#addresses.phone"/></h4>
							<s:property value="#addresses.province"/><label>( 省份  )</label>
							<s:property value="#addresses.city"/><label>( 城市  )</label>
							<s:property value="#addresses.county"/> <label>( 县（区） )</label>
							<s:property value="#addresses.street"/><label>( 街道 )</label>
							<s:property value="#addresses.address"/><br/>
							<a href="address?oid=<s:property value="#addresses.oid"/>&jsp=addressChange&username=${user.username}">修改</a>&nbsp;&nbsp;
							<a href="address?oid=<s:property value="#addresses.oid"/>&jsp=addressDele&username=${user.username}"  onclick="return del()">删除</a>
							<br/><br/>
						</s:iterator>
						</div>
					</div>
					<div class="clearfix"></div>
					</div>
				</div>
			</div><br><br><br>
			
			
				
				
						
				
			<!--end-map-section-->
			<!--start-footer-section-->
			<div class="footer-section">
						<div class="container">
							<div class="footer-top">
						<p>Copyright &copy; 2015.Company name All rights reserved.More Templates 起行 - Collect from </p>
									</div>
					<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
			</div>
	<!--end-footer-section-->


</body>
<script type="text/javascript"> 
	function del(){ 
		if(!confirm("确认要删除？")){ 
			window.event.returnValue = false; 
		} 
	} 
</script> 
</html> 