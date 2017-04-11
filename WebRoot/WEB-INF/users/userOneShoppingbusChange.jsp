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
<script type="text/javascript" src="././js/showdate.js"></script>
<script type="text/javascript" src="././js/laydate.js"></script>

<style type="text/css">
	*{margin:0;padding:0;list-style:none;}
	html{background-color:#E3E3E3; font-size:14px; color:#000; font-family:'微软雅黑'}
	h2{line-height:30px; font-size:20px;}
	a,a:hover{ text-decoration:none;}
	pre{font-family:'微软雅黑'}
	.box{width:970px; padding:10px 20px; background-color:#fff; margin:10px auto;}
	.box a{padding-right:20px;}
	.demo1,.demo2,.demo3,.demo4,.demo5,.demo6{margin:25px 0;}
	h3{margin:10px 0;}
	.layinput{height: 22px;line-height: 22px;width: 150px;margin: 0;}
</style>
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
							<h3>修改出行时间..<span>!</span></h3>
							<div class="study1">
								<form action="shoppingbus?oid=${shoppingbus.oid}&jsp=shoppingchanged&username=${user.username}" method="post" enctype="multipart/form-data">
									<s:actionerror/>
									<div class="demo6">
									   <input readonly class="layinput" id="hello1" name="intime">
									   <div class="laydate-icon " onClick="laydate({elem: '#hello1'});" style="width:10px;display:inline-block;border:none;"></div>
									</div>
									
									<input type="button" value="返回" onclick="javascript: history.go(-1);" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="submit" value="修改"/>
								</form>	
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

	!function(){
		laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
		laydate({elem: '#demo'});//绑定元素
	}();
	
	//日期范围限制
	var start = {
	    elem: '#start',
	    format: 'YYYY-MM-DD',
	    min: laydate.now(), //设定最小日期为当前日期
	    max: '2099-06-16', //最大日期
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	         end.min = datas; //开始日选好后，重置结束日的最小日期
	         end.start = datas //将结束日的初始值设定为开始日
	    }
	};
	
	var end = {
	    elem: '#end',
	    format: 'YYYY-MM-DD',
	    min: laydate.now(),
	    max: '2099-06-16',
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	        start.max = datas; //结束日选好后，充值开始日的最大日期
	    }
	};
	laydate(start);
	laydate(end);
	
	//自定义日期格式
	laydate({
	    elem: '#test1',
	    format: 'YYYY年MM月DD日',
	    festival: true, //显示节日
	    choose: function(datas){ //选择日期完毕的回调
	        alert('得到：'+datas);
	    }
	});



</script> 
</html> 