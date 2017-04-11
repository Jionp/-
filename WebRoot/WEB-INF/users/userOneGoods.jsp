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
				<div class="container" style="width: 100%;margin:0 auto;" >
					<div class="study-grids" >
						<div class="col-md-6 study-grid" >
						<div class="study">
						<table class="tab" border="1" cellspacing="0">
							<caption>
								<h3>未出行..<span>订单！</span></h3>
							</caption>
							<tr>
								<th>产品名称</th>
								<th>旅游地点</th>
								<th>价格（￥）</th>
								<th>订单时间</th>
								<th>出行时间</th>
								<th>出行真实姓名</th>
								<th>出行身份证</th>
								<th>修改</th>
							</tr>
							<s:set value="0" id="num"></s:set>
							<s:iterator value="travelsing" id="traveling" >  
								   <tr>  
								      <td>  
								         <s:property value="#traveling.name"/>
								      </td>  
								      <td>  
								          <s:property value="#traveling.address"/> 
								      </td>  
								      <td>  
								          <s:property value="#traveling.price"/>  
								      </td> 
								      <td>  
								         <s:property value="goodsing[#num].intime"/>  
								      </td>  
								      <td>  
								         <s:property value="goodsing[#num].gotime"/>  
								      </td> 
								      <td>  
								         <s:property value="goodsing[#num].name"/>  
								      </td> 
								      <td>  
								         <s:property value="goodsing[#num].cardid"/>  
								      </td> 
								      <td>  
								         <a target='_BLANK' href="index?username=${user.username}&jsp=travelone&goodsid=<s:property value="goodsing[#num].goodsid"/>">查看</a>&nbsp;&nbsp;
										 <a href="goods?jsp=userGoodsDele&username=${user.username}&goodsid=<s:property value="goodsing[#num].goodsid"/>&oid=<s:property value="goodsing[#num].oid"/>"  onclick="return del()">删除</a> 
								      </td> 
								  </tr>  
								  <s:set value="#num+1" id="num"></s:set>
							</s:iterator>
						</table>
						</div>
						</div>
						<div class="col-md-6 study-grid">
						<div class="study2">
							<table class="tab" border="1" cellspacing="0">
							<caption>
								<h3>已出行..<span>订单！</span></h3>
							</caption>
							<tr>
								<th>产品名称</th>
								<th>旅游地点</th>
								<th>价格（￥）</th>
								<th>订单时间</th>
								<th>出行时间</th>
								<th>出行真实姓名</th>
								<th>出行身份证</th>
								<th>修改</th>
							</tr>
							<s:set value="0" id="num"></s:set>
							<s:iterator value="travelsed" id="traveled" >  
								   <tr>  
								      <td>  
								         <s:property value="#traveled.name"/>
								      </td>  
								      <td>  
								          <s:property value="#traveled.address"/> 
								      </td>  
								      <td>  
								          <s:property value="#traveled.price"/>  
								      </td> 
								      <td>  
								         <s:property value="goodsed[#num].intime"/>  
								      </td>  
								      <td>  
								         <s:property value="goodsed[#num].gotime"/>  
								      </td> 
								      <td>  
								         <s:property value="goodsed[#num].name"/>  
								      </td> 
								      <td>  
								         <s:property value="goodsed[#num].cardid"/>  
								      </td> 
								      <td>  
								         <a target='_BLANK' href="index?username=${user.username}&jsp=travelone&goodsid=<s:property value="goodsed[#num].goodsid"/>">查看</a>&nbsp;&nbsp;
										 <a href="goods?jsp=userGoodsDele&username=${user.username}&goodsid=<s:property value="goodsed[#num].goodsid"/>&oid=<s:property value="goodsed[#num].oid"/>"  onclick="return del()">删除</a> 
								      </td> 
								  </tr>  
								  <s:set value="#num+1" id="num"></s:set>
							</s:iterator>
						</table>
						</div>
					</div>
				</div>
			</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			
			
				
				
						
				
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