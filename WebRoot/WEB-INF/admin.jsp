<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>起行后台管理系统</title>
<link type="text/css" rel="stylesheet" href="./css/style.css" />
<script type="text/javascript" src="./js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="./js/menu.js"></script>
</head>

<body>
<div class="top"></div>
<div id="header">
	<div class="logo">起行后台管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href="./manage?username=${username}">${username}</a></li>
			<li><a href="./login.jsp">退出</a></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
        <li>
          <h4 class="M2"><span></span>订单处理</h4>
          <div class="list-item none">
          	<a href='#' id="dc">订单查询</a>  
          	<a href='#' id="dx">订单修改</a>
            <a href='#' id="dz">订单增加</a>
            <a href='#' id="ds">订单删除</a>
           </div>
        </li>
		<li>
          <h4  class="M5"><span></span>用户维护</h4>
          <div class="list-item none">
            <a href='#' id="yc">用户查询</a>
            <a href='#' id="yx">用户修改</a>
            <a href='#' id="yz">用户增加</a>
            <a href='#' id="ys">用户删除</a>
          </div>
        </li>
        
        <li>
          <h4   class="M10"><span></span>内部管理</h4>
          <div class="list-item none">
            <a href='#' id="gc">管理员查询</a>
            <a href='#' id="gx">管理员修改</a>
            <a href='#' id="gz">管理员增加</a>
            <a href='#' id="gs">管理员删除</a>
          </div>
        </li>
			
		<li>
          <h4  class="M4"><span></span>产品管理</h4>
          <div class="list-item none">
            <a href='#' id="cc">产品查询</a>
            <a href='#' id="cx">产品修改</a>
            <a href='#' id="cz">产品增加</a>
            <a href='#' id="cs">产品删除</a>
          </div>
        </li>
        <li>
          <h4  class="M6"><span></span>产品照片管理</h4>
          <div class="list-item none">
            <a href='#' id="czc">产品照片查询</a>
            <a href='#' id="czx">产品照片修改</a>
            <a href='#' id="czz">产品照片增加</a>
            <a href='#' id="czs">产品照片删除</a>
          </div>
        </li>
		
  </ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
					<ul>
							<li><img src="./images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">起行后台管理系统</a></li>
						</ul>
			</div>
			<div class="main">
				<iframe src="" width="100%" height="100%"></iframe>
			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2017 版权所有 京ICP备05019125号-10  来源:起行网</p></div>
<script>navList(12);</script>

<script src="./js/jquery-2.1.0.js" ></script>
<script type="text/javascript">
	//订单
	$('#dc').click(function(){
		$('iframe').attr('src','./goods?jsp=goodsShow');
	});
	$('#dx').click(function(){
		$('iframe').attr('src','./goods?jsp=goodsChange');
	});
	$('#dz').click(function(){
		$('iframe').attr('src','./goods?jsp=goodsSave');
	});
	$('#ds').click(function(){
		$('iframe').attr('src','./goods?jsp=goodsDele');
	});
	
	//用户
	$('#yc').click(function(){
		$('iframe').attr('src','./admins?jsp=users');
	});
	$('#yx').click(function(){
		$('iframe').attr('src','./adminsChangeShow?jsp=users');
	});
	$('#yz').click(function(){
		$('iframe').attr('src','./kongaction?jsp=userAdd');
	});
	$('#ys').click(function(){
		$('iframe').attr('src','./adminsChangeShow?jsp=userdele');
	});
	
	//管理员
	$('#gc').click(function(){
		$('iframe').attr('src','./admins?jsp=admins');
//		alert("152")
	});
	$('#gx').click(function(){
		$('iframe').attr('src','./adminsChangeShow?jsp=admins');
//		alert("152")
	});
	$('#gz').click(function(){
		$('iframe').attr('src','./kongaction?jsp=adminAdd');
	});
	$('#gs').click(function(){
		$('iframe').attr('src','./adminsChangeShow?jsp=admindele');
	});
	
	//产品
	$('#cc').click(function(){
		$('iframe').attr('src','./TravelShow?jsp=travels');
	});
	$('#cx').click(function(){
		$('iframe').attr('src','./TravelShow?jsp=travelschange');
	});
	$('#cz').click(function(){
		$('iframe').attr('src','./kongaction?jsp=travelAdd');
	});
	$('#cs').click(function(){
		$('iframe').attr('src','./TravelShow?jsp=travelsdele');
	});
	
	//产品照片管理
	$('#czc').click(function(){
		$('iframe').attr('src','./LittlephotoShow?jsp=littlephotos');
	});
	$('#czx').click(function(){
		$('iframe').attr('src','./LittlephotoShow?jsp=littlephotochange');
	});
	$('#czz').click(function(){
		$('iframe').attr('src','./kongaction?jsp=littlephotoAdd');
	});
	$('#czs').click(function(){
		$('iframe').attr('src','./LittlephotoShow?jsp=littlephotodele');
	});

	

	
</script>

</body>
</html>

