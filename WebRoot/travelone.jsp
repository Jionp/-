<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en-US">
<head>

	<meta name="viewport" content="width=device-width, initial-scale=1, minimal-ui">
	<meta charset="utf-8">
	<title>Modest - Free Web Template</title>
	<!-- Main Stylesheet -->
	<link rel="stylesheet" href="css/animateMy.css">
	<link rel="stylesheet" href="css/font-awesome.minMy.css">
	<link rel="stylesheet" href="css/templatemo-style.css">
	
	<!-- <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css"> -->
	<link rel="stylesheet" type="text/css" href="css/jq22-demo.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	<!-- jQuery -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
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
		  left: 1760px;
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
		
	<!-- HEADER -->
	<a id="username" href="index?jsp=grxx&username=${user.username}">${user.username }</a>
    <a id="index" href="login?username=${user.username}&password=${user.password}">首页</a>
	<div class="fluid-container">
		<header class="site-header">
			<div class="navbar-default navbar-fixed-top">
				<div class="fluid-container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="#">商品详情</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="link-service" href="#services">返回顶部</a></li>
						<li><a class="link-facts" href="#facts">购买过此产品的用户</a></li>
						<li><a class="link-portfolio" href="#portfolio">图片欣赏</a></li>
						<li><a class="link-clients" href="#clients">商品介绍</a></li>
						<li><a class="link-contact" href="#contact">购买填写资料</a></li>
					</ul>
				</div>
				</div>
			</div>
		</header> <!-- .site-header -->
	</div> <!-- .fluid-container -->
	
	<!-- WELCOME TEXT -->
	<div class="main-content">
	<div class="fluid-container">
		<div class="section-welcome">
			<div class="row">
            	<div class="col-md-4 text-center">
					<img src="fileup/${travel.bigphoto}" class="img-responsive animated fadeInLeft" alt="Time is happiness">
				</div>
				<div class="col-md-8 text-center welcome-section">
                	<br>
                	<!--产品名字-->
					<h2 class="animated fadeInDown">${travel.name}</h2>
					<br>
                    <p class="animated fadeInRight">起行官方网站,提供出境游、国内游、周边游、自由行、酒店预订等一站式服务。交友式旅游带你脱离孤单式旅游！</p>
                    <br>
				      
					<a href="#myModal7" role="button" class="btn btn-default" data-toggle="modal">>加入购物车</a>
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
													   选择出行时间：<input readonly class="layinput" id="hello1" name="intime">
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
				</div>
			</div>
		</div>
	</div>
	<!-- SERVICES -->
	<div class="fluid-container">
		<div class="section-services" id="services">
			<div class="row">
				<div class="col-md-4 col-sm-12 col-xs-12 col-lg-4 text-center">
					<article class="service animated fadeInUp">
						<div class="service-header">
							<h4>目的地</h4>
						</div>
						<div class="service-icon">
							<i class="fa fa-file-text-o"></i>
						</div>
						<div class="service-text">
							<p>${travel.address}</p>
						</div>
					</article>
				</div>
				<div class="col-md-4 col-sm-12 col-xs-12 col-lg-4 text-center">
					<article class="service animated fadeInUp">
						<div class="service-header">
							<span class="s-left"></span>
							<span class="s-right"></span>
							<h4>打折前价格</h4>
						</div>
						<div class="service-icon">
							<i class="fa fa-camera-retro"></i>
						</div>
						<div class="service-text">
							<s:set var="priced" value="travel.price+566"> </s:set> 
							<p><span class="reducedfrom">$<s:property value="#priced" /></span></p>
						</div>
					</article>
				</div>
				<div class="col-md-4 col-sm-12 col-xs-12 col-lg-4 text-center">
					<article class="service animated fadeInUp">
						<div class="service-header">
							<span class="s-left"></span>
							<span class="s-right"></span>
							<h4>打折后价格</h4>
						</div>
						<div class="service-icon">
							<i class="fa fa-globe"></i>
						</div>
						<div class="service-text">
							<p>$${travel.price}</p>
						</div>
					</article>
				</div>
			</div>
		</div>
	</div>

	<!-- FUN FACTS -->
	<div class="" style="width: 1200px; text-align:center;margin:0 auto;" id="facts">
		<div class="row">
			<div class="col-md-12 text-right">
				<div class="section-header facts-header">
					<h3>购买此产品用户</h3>
				</div>
			</div>
		</div>
		<div class="section-facts">
			<div class="row">
			<s:iterator value="userbuys" id="userbuys">
				<div class="col-md-3 col-sm-6 col-xs-12 col-lg-3 text-center">
					<div class="counter-item">
						<div class="counter-inner">
							<div class="counter-body">
								<!--人-->
								<a href="#<s:property value="#userbuys.username"/>" role="button"  data-toggle="modal">		
									<h2  data-count="1604"><img class="start-count" style="border-radius:50%;height: 50px;width: 50px;" alt="" src="fileup/<s:property value="#userbuys.photo"/>" /></h2>
									<h6><s:property value="#userbuys.username"/></h6>
									<div class="end-count"></div>
								</a>
								<div id="<s:property value="#userbuys.username"/>" class="modal" data-easein="slideDownIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
										    <div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										        <h4 class="modal-title">打招呼</h4>
										    </div>
										    <form action="index?jsp=qq&username=${user.username }&goodsid=${travel.goodsid }&friendname=<s:property value="#userbuys.username"/>" method="post">
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
							</div>				
						</div>
					</div>
				</div> <!-- .counter-item -->
				</s:iterator>
			</div>
		</div>
	</div>
	
	<!-- PORTFOLIO -->
	<div class="fluid-container" id="portfolio">
		<div class="row">
			<div class="col-md-12 text-left">
				<div class="section-header portfolio-header">
					<h3>具体图片</h3>
				</div>
			</div>
		</div>
		<div class="section-portfolio" >
			<div class="row portfolio-holder">
				<s:iterator value="littlephotos" id="littlephotos">
					<article class="portfolio col-md-4 col-sm-6 col-xs-12">
						<div class="entry-thumbnail">
							<a class="lightbox" href="#<s:property value="#littlephotos.photoaddress"/>">
								<img src="fileup/<s:property value="#littlephotos.photoaddress"/>" alt=""/>
							</a> 
						</div>
						<div class="portfolio-overlay first">
							<a href="#"><h4 class="entry-title"><s:property value="#littlephotos.photospeak"/></h4></a>
						</div>
					</article>
				</s:iterator>  
			</div>
		</div>
	</div>

	<!-- CLIENTS -->
	<div class="fluid-container" id="clients">
		<div class="row">
			<div class="col-md-12 text-right">
				<div class="section-header clients-header">
					<h3>商品介绍</h3>
				</div>
			</div>
		</div>
		<div class="section-clients">
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="client-icon">
						<i class="i fa fa-quote-left"></i>
					</div>
					<ul class="client-slide">
						<li>
							以下提供★表示住客网络评分（住客网络评分其信息仅供参考，不做合同依据），此线路参考住宿级别为：★★★★ 
							【天堂花园酒店】：
							长滩岛天堂花园度假村座落在长滩岛的白色沙滩和清澈的海水附近，占地10000平方米，是长滩岛上一处幽静的绿洲。
							长滩岛天堂花园度假村每个房间都设有阳台或露台，舒适且设备完善。三个不同 风格的泳池，其中一座是专为小朋友设计的，配有救生员巡逻，小朋友可在安全的环境下玩乐。海滩上会提供附遮阳伞的座椅、日光浴的床位、免费的毛巾服务。
							长滩岛天堂花园度假村步行至沙滩约3分钟，拥有原始自然菲律宾风味，茂盛的热带植物使酒店绿意盎然充满大自然的气息 。
						</li>
						
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- CONTACT US -->
	<div class="fluid-container" id="contact">
		<div class="row">
			<div class="col-md-12 text-left">
				<div class="section-header contact-header">
					<h3>在线购买</h3>					
				</div>
			</div>
		</div>
		<div class="section-contact">
			<div class="row">
				<div class="col-md-5 col-sm-12 col-xs-12">
				<form class="from" action="shoppingbus?username=${user.username }&goodsid=${travel.goodsid }&jsp=addbuy" method="post" id="contact-form">
						<fieldset>
							<label for="name">出行人姓名:</label>
							<input type="text" name="name" id="name">
						</fieldset>
						<fieldset>
							<label for="email">出行人身份证:</label>
							<input type="text" name="cardid" id="email">
						</fieldset>
						
						<fieldset>
							<label for="message">留言(可不写):</label>
							<textarea name="message" id="message" rows="4"></textarea>
						</fieldset>
						
						<fieldset>
							<label for="phone">出行日期:</label><br>
							<input name="gotime" placeholder="请输入日期" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD'})">
						</fieldset>
						<fieldset>
							<input type="submit" class="button-dark" value="在线购买">
						</fieldset>
					</form>
				</div>
				<div class="col-md-7 col-sm-12 col-xs-12">
					
					<div class="contact-infos">
						<div class="row">
							
							<div class="col-md-6">
								<p>请认真填写资料，我们会根据你填写的信息进行购买旅游必须的车票，旅游景点门票。</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<div class="fluid-container">
		<footer class="site-footer">
			<a href="#" class="back-to-top">
				<i class="fa fa-angle-up"></i>
			</a>
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12 padding-left-0">
					<p class="copyright">Copyright &copy; 2084 Company Name | More Templates <a href="" target="_blank" title="模板之家">起行</a> - Collect from </p>
				</div>
			</div>
		</footer>
	</div>
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
	<!-- Plugins -->
	<script src="js/bootstrap.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/custom.js"></script>
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
	<script src='js/velocity.min.js'></script> 
	<script src='js/velocity.ui.min.js'></script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	<!-- Google Map -->



</body>
</html>
