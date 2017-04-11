<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>起行管理人员个人信息</title>
<link href="./css/styles.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Elegent Tab Forms,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<script src="./js/jquery.min.js"></script>
<script src="./js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
					$(document).ready(function () {
						$('#horizontalTab').easyResponsiveTabs({
							type: 'default', //Types: default, vertical, accordion           
							width: 'auto', //auto or any width like 600px
							fit: true   // 100% fit in a container
						});
					});
				   </script>

<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700,200italic,300italic,400italic,600italic|Lora:400,700,400italic,700italic|Raleway:400,500,300,600,700,200,100' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
<div class="main">
		<h1>起行管理人员个人信息</h1>
	 <div class="sap_tabs">	
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
			  <ul class="resp-tabs-list">
			  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><div class="top-img"><img src="./images/top-note.png" alt=""/></div><span>基本信息</span>
			  	  	
				</li>
				  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><div class="top-img"><img src="./images/top-lock.png" alt=""/></div><span>隐私信息</span></li>
				  <li class="resp-tab-item lost" aria-controls="tab_item-2" role="tab"><div class="top-img"><img src="./images/top-key.png" alt=""/></div><span>管理信息</span></li>
				  <div class="clear"></div>
			  </ul>		
			  <!---->		  	 
			<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
					<div class="facts">
							<!--login1-->
						<div class="register">
							<form>
								<p>用户名</p>
								<input type="text" class="text" value="${admin.username}" name="username" readonly="readonly" >
								<p>性 &nbsp;别</p>
								<input type="text" class="text" value="${admin.sex}" name="sex" readonly="readonly">
								<p>年&nbsp;龄</p>
								<input type="text" class="text" value="${admin.age}" name="age" readonly="readonly">
							</form>
							<div class="p-container">
									<div class="submit two">
									<input type="submit" onclick="javascript:history.back(-1);" value="返   回" >
									</div>
									<div class="clear"> </div>
							</div>
						</div>
					</div>
				</div>		
			 <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
					 	<div class="facts">
							 <div class="login">
							<form>
								<p style="float: left; color: white;">电&nbsp;话</p>
								<input type="text" class="text" value="${admin.phone}" name="phone" readonly="readonly"/><br>
								<p style="float: left; color: white;">密&nbsp;码</p>
								<input type="text" class="text" value="${admin.password}" name="password" readonly="readonly"><br>
								<p style="float: left; color: white;">权&nbsp;限 </p>
								<input type="text" class="text" value="${admin.power}" name="power" readonly="readonly"><br>
							</form>
							<div class="p-container">
									<div class="submit two">
									<input type="submit" onclick="javascript:history.back(-1);" value="返   回" >
									</div>
									<div class="clear"> </div>
							</div>
					</div>
				</div> 
			</div> 			        					 
				 <div class="tab-3 resp-tab-content" aria-labelledby="tab_item-2 item3">
				     	<div class="facts">
									
									</div>
				         	</div>           	      
				        </div>	
				     </div>	
		        </div>
	        </div>
	     </div>

	<!--start-copyright-->
   		<div class="copy-right">
   			<div class="wrap">
				<p>Copyright© 2017 版权所有 京ICP备05019125号-10 来源:起行网 <a href="http://w3layouts.com">W3layouts</a></p>
		</div>
	</div>
	<!--//end-copyright-->
</body>
</html>
