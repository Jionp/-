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
						
						<div class="study1">
						<table class="tab" border="1" cellspacing="0">
							<caption>
								<h3>未回复..<span>留言！</span></h3>
							</caption>
							<tr>
								<th>发信人</th>
								<th>时间</th>
								<th>内容</th>
								<th>处理</th>
								<th>回复</th>
							</tr>
							<s:set value="0" id="num"></s:set>
							<s:iterator value="chating" id="chating" >  
								   <tr>  
								      <td>  
								         <s:property value="#chating.username"/>
								      </td>  
								      <td>  
								          <s:property value="#chating.chattime"/> 
								      </td>  
								      <td>  
								          <s:property value="#chating.contentto"/>  
								      </td>  
								      <td>  
								         <a href="index?jsp=chatChage&username=${user.username}&oid=<s:property value="#chating.oid"/>">标记已读</a>&nbsp;&nbsp;
								      </td>  
								      <td>  
								         <form action="index?jsp=huifu&username=${user.username}&friendname=<s:property value="#chating.username"/>" method="post">
										  <a href="#<s:property value="#chating.oid"/>" role="button" class="btn btn-default" data-toggle="modal">回复</a></div>
									      <div id="<s:property value="#chating.oid"/>" class="modal" data-easein="swoopIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									        <div class="modal-dialog">
									          <div class="modal-content">
									            <div class="modal-header">
									              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									              <h4 class="modal-title">打招呼</h4>
									            </div>
									            
									            <div class="modal-body">
									              <textarea name="contentto" rows="10" cols="66" id="chat"></textarea>
									            </div>
									            <div class="modal-footer">
									              <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</button>
									              <input type="submit" class="btn btn-primary"  value="发送"/> 
									            </div>
									            
									          </div>
									        </div>
									        
									      </div>
									      </form>
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
								<h3>已读..<span>留言！</span></h3>
							</caption>
							<tr>
								<th>收信人</th>
								<th>时间</th>
								<th>内容</th>
								<th>处理</th>
							</tr>
							<s:set value="0" id="num"></s:set>
							<s:iterator value="chated" id="chated" >  
								   <tr>  
								      <td>  
								         <s:property value="#chated.username"/>
								      </td>  
								      <td>  
								          <s:property value="#chated.chattime"/> 
								      </td>  
								      <td>  
								          <s:property value="#chated.contentto"/>  
								      </td>  
								      <td>  
										 <a href="index?jsp=chatDele&username=${user.username}&&oid=<s:property value="#chated.oid"/>"  onclick="return del()">删除</a> 
								      </td> 
								  </tr>  
								  <s:set value="#num+1" id="num"></s:set>
							</s:iterator>
						</table>
						</div>
					</div>
					<div class="clearfix"></div>
					</div>
				</div>
			</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			
			
				
				
						
				
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
<script src="././vendor/jquery/jquery.min.js"></script>
<%--   <script src="././vendor/jquery/bootstrap.js"></script> --%>
  <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
  <script src='././js/velocity.min.js'></script> 
  <script src='././js/velocity.ui.min.js'></script> 
  <script type="text/javascript">
	function del(){ 
		if(!confirm("确认要删除？")){ 
			window.event.returnValue = false; 
		} 
	} 
</script> 
</html> 