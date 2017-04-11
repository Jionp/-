<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML>
<html>
<head>
<title>HOME</title>

<%-- <script src="js/bootstrap.js"></script> --%>

<link href="css/styleone.css" rel='stylesheet' type='text/css' />

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashion Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" href="css/bootstrapuser.css" type="text/css" />
<link rel="stylesheet" href="css/animateuser.css" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="css/font.css" type="text/css" />
  <link rel="stylesheet" href="css/app.css" type="text/css" />
<!--//theme-style-->
<script type="text/javascript" src="js/laydate.js"></script>

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
<style type="text/css">
	.bg-left {
    
    background-size: cover;
	-webkit-background-size: cover;
	-o-background-size: cover;
	-ms-background-size: cover;
	-moz-background-size: cover;
    min-height:426px;
    position: relative;
	float: left;
    width:70%;
}
#username{
  position: absolute;
  left: 1800px;
  top: 10px;
  color: white;
}
#index{
  position: absolute;
  left: 1850px;
  top: 10px;
  color: white;
}
</style>
</head>
<body>
             <h1>${travel.name}</h1>
             <a id="username" href="index?jsp=grxx&username=${user.username}">${user.username }</a>
             <a id="index" href="login?username=${user.username}&password=${user.password}">首页</a>
                <div class="main">
				  <div class="bg-left" style="background: url(fileup/${travel.bigphoto}) no-repeat 0px 0px;">
				  </div>
                        <div class="slide">
		                        <div class="banner-info">
									<div class="cont1 span_2_of_a1 simpleCart_shelfItem">
									<h4>${travel.name}</h4>
									<ul class="rating">
									   <li><a class="product-rate" href="#"> <label> </label></a> <span> </span></li>
									   <li><a href="#">目的地：${travel.address}</a></li>
									</ul>
									<div class="clear"></div>
									<div class="price_single">
									  <s:set var="priced" value="travel.price+566"> </s:set> 
									  <span class="reducedfrom">$<s:property value="#priced" /></span>
									  <span class="amount item_price actual">会员优惠价:$${travel.price}</span>
									</div>
									<ul class="size" ><br/><br>
										<h3>最近购买过此产品的用户</h3>
										<s:iterator value="userbuys" id="userbuys">
										<li><a href="#<s:property value="#userbuys.username"/>" role="button"  data-toggle="modal">
											<img style="border-radius:50%;height: 50px;width: 50px;" alt="" src="fileup/<s:property value="#userbuys.photo"/>" />
											&nbsp;&nbsp;&nbsp;<s:property value="#userbuys.username"/>
										</a></li>
										<div  id="<s:property value="#userbuys.username"/>" class="modal" data-easein="slideDownIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								        <div class="modal-dialog">
								          <div class="modal-content">
								            <div class="modal-header">
								              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								              <h4 class="modal-title">打招呼</h4>
									            </div>
									            <form action="index?jsp=dzh&username=${user.username }&friendname=<s:property value="#recommendUsers.username"/>" method="post">
										            <div class="modal-body">
														<textarea name="contentto" rows="10" cols="78" id="chat"></textarea>
										            </div>
										            <div class="modal-footer">
										              <input id="bus" type="submit" class="btn btn-default"  value="提交"/>
										            </div>
									            </form>
									          </div>
									        </div>
									      </div>
										</s:iterator>
									</ul><br><br>
									<div class="btn_form button item_add item_1">
									  <a href="#myModal7" role="button" class="btn btn-default" data-toggle="modal">加入购物车</a>
								      <div id="myModal7" class="modal" data-easein="slideDownIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								        <div class="modal-dialog">
								          <div class="modal-content">
								            <div class="modal-header">
								              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								              <h4 class="modal-title">选择出行日期</h4>
								            </div>
								            <form class="from" action="shoppingbus?username=${user.username }&goodsid=${travel.goodsid }&jsp=addbus" method="post">
									            <div class="modal-body">
													<div class="demo6">
													   <input readonly class="layinput" id="hello1" name="intime">
													   <div class="laydate-icon " onClick="laydate({elem: '#hello1'});" style="width:10px;display:inline-block;border:none;"></div>
													</div>
									            </div>
									            <div class="modal-footer">
									              <input id="bus" type="submit" class="btn btn-default"  value="提交"/>
									            </div>
								            </form>
								          </div>
								        </div>
								      </div>
									   
									  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#myModal17" role="button" class="btn btn-default" data-toggle="modal">直接购买</a>
								      <div id="myModal17" class="modal" data-easein="slideDownIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								        <div class="modal-dialog">
								          <div class="modal-content">
								            <div class="modal-header">
								              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								              <h4 class="modal-title">填写购买信息</h4>
								            </div>
								            <form class="from" action="shoppingbus?username=${user.username }&goodsid=${travel.goodsid }&jsp=addbuy" method="post">
									            <div class="modal-body">
									            	<div class="demo2">
														出行时间：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="gotime" placeholder="请输入日期" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD'})">
														出行人姓名 ：<input type="text" name="name"/><br><br>
													  	出行人省份证：<input type="text" name="cardid"/>
													</div>	
									            </div>
									            <div class="modal-footer">
									              <input id="buy" type="submit" class="btn btn-default"  value="提交"/>
									            </div>
								            </form>
								          </div>
								        </div>
								      </div>
									</div>
								</div>

								</div>
							

					</div>
					
		<div class="clear"></div>
		<div class="bottom">
		   <ul id="flexiselDemo3">
		   	<s:iterator value="littlephotos" id="littlephotos">
		   		<li>
					<div class="biseller-column">
								<a class="lightbox" href="#<s:property value="#littlephotos.photoaddress"/>">
								  <img src="fileup/<s:property value="#littlephotos.photoaddress"/>" alt=""/>
								</a> 
								<div class="lightbox-target" id="<s:property value="#littlephotos.photoaddress"/>">
								   <img src="fileup/<s:property value="#littlephotos.photoaddress"/>" alt=""/>
								   <a class="lightbox-close" href=""> </a>

									<div class="clear"> </div>
								</div>
					</div>
				</li>
		   	</s:iterator>  
				
	     	</ul>
			</div>
			<script type="text/javascript">
				if($("#username").text()!=""){
						
					}else{
						$('#index').attr('href','index?jsp=index');
						$('.from').attr('action','#');
						$("#buy").click(function(){
								alert("请登录");
							});
						$("#bus").click(function(){
								alert("请登录");
							});
					}
					
				 $(window).load(function() {
					$("#flexiselDemo3").flexisel({
						visibleItems:6,
						animationSpeed: 1000,
						autoPlay: true,
						autoPlaySpeed: 3000,    		
						pauseOnHover: true,
						enableResponsiveBreakpoints: true,
				    	responsiveBreakpoints: { 
				    		portrait: { 
				    			changePoint:480,
				    			visibleItems:3
				    		}, 
				    		landscape: { 
				    			changePoint:640,
				    			visibleItems:3
				    		},
				    		tablet: { 
				    			changePoint:768,
				    			visibleItems:4
				    		}
				    	}
				    });
				    
				});
				// add the animation to the popover
		$('a[rel=popover]').popover().click(function(e) {
		  e.preventDefault();
		  var open = $(this).attr('data-easein');
		  if (open == 'shake') {
		    $(this).next().velocity('callout.' + open);
		  } else if (open == 'pulse') {
		    $(this).next().velocity('callout.' + open);
		  } else if (open == 'tada') {
		    $(this).next().velocity('callout.' + open);
		  } else if (open == 'flash') {
		    $(this).next().velocity('callout.' + open);
		  } else if (open == 'bounce') {
		    $(this).next().velocity('callout.' + open);
		  } else if (open == 'swing') {
		    $(this).next().velocity('callout.' + open);
		  } else {
		    $(this).next().velocity('transition.' + open);
		  }

		});

		// add the animation to the modal
		$(".modal").each(function(index) {
		  $(this).on('show.bs.modal', function(e) {
		    var open = $(this).attr('data-easein');
		    if (open == 'shake') {
		      $('.modal-dialog').velocity('callout.' + open);
		    } else if (open == 'pulse') {
		      $('.modal-dialog').velocity('callout.' + open);
		    } else if (open == 'tada') {
		      $('.modal-dialog').velocity('callout.' + open);
		    } else if (open == 'flash') {
		      $('.modal-dialog').velocity('callout.' + open);
		    } else if (open == 'bounce') {
		      $('.modal-dialog').velocity('callout.' + open);
		    } else if (open == 'swing') {
		      $('.modal-dialog').velocity('callout.' + open);
		    } else {
		      $('.modal-dialog').velocity('transition.' + open);
		    }

		  });
		});
	!function(){
	laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
	laydate({elem: '#demo'});//绑定元素
}();

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

//日期范围限定在昨天到明天
laydate({
    elem: '#hello3',
    min: laydate.now(-1), //-1代表昨天，-2代表前天，以此类推
    max: laydate.now(+1) //+1代表明天，+2代表后天，以此类推
});
	
</script>
			   <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
				<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
				<script src='js/velocity.min.js'></script> 
				<script src='js/velocity.ui.min.js'></script> 
			   <script type="text/javascript" src="js/jquery.flexisel.js"></script>

		</div>
	</div>
		

</body>
</html>