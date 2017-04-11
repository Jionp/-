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
						<h3>基本信息..<span>!</span></h3>
						<div class="study1">
						<form action="index?jsp=userOneChange&usernamed=${user.username}&password=${user.password}" method="post" enctype="multipart/form-data">
							<s:actionerror/>
							<p><input type="text" value="${user.username }" name="username" readonly="readonly" /> <label>( 用户名  )</label></p>
							<p><input type="text" value="${user.phone }" name="phone" /><label>( 电话  )</label></p>
							<p><input type="text" value="${user.age }" name="age"/> <label>( 年龄 )</label></p>
							<p><input type="text" value="${user.sex }" name="sex"/><label>( 性别 )</label></p>
							<p><textarea rows="3" cols="20" name="speak">${user.speak }</textarea><label>( 个性签名 )</label>
							</p>
							<p><input type="file" name="upload"/><label>( 头像 )</label> </p>
							<input type="text" class="text" value="${user.photo}" name="photo" style="display:none">
							<input type="reset" value="取消"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" value="修改"/>
						</form>	
						</div>
						</div>
						<div class="col-md-6 study-grid">
						<h3>会员等级..<span>!</span></h3>
						<div class="study2">
						<h4>收藏等级</h4>
							<div class="progress">
							  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
								<span class="sr-only">40% Complete (success)</span>
							  </div>
							</div>
						<h4>购买等级</h4>
						<div class="progress">
						  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
							<span class="sr-only">20% Complete</span>
						  </div>
						</div>
						<h4>社交等级</h4>
						<div class="progress">
						  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
							<span class="sr-only">60% Complete (warning)</span>
						  </div>
						</div>
						</div>
					</div>
					<div class="clearfix"></div>
					</div>
				</div>
			</div><br><br><br><br>
			
			
				
				
						
				
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
</html> 