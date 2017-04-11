<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>起行网个人中心</title>
  <meta name="description" content="app, web app, responsive, responsive layout, admin, admin panel, admin dashboard, flat, flat ui, ui kit, AngularJS, ui route, charts, widgets, components" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="././css/bootstrapuser.css" type="text/css" />
  <link rel="stylesheet" href="././css/animateuser.css" type="text/css" />
  <link rel="stylesheet" href="././css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="././css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="././css/font.css" type="text/css" />
  <link rel="stylesheet" href="././css/app.css" type="text/css" />
</head>
<body>

  <div class="app app-header-fixed" id="app">
    <!-- navbar -->
    <div class="app-header navbar">
      <!-- navbar header -->
      <div class="navbar-header bg-dark">
        <!-- brand -->
        <a href="#/" class="navbar-brand text-lt">
          <i class="fa fa-btc"></i>
          <img src="img/logo.png" alt="." class="hide">
          <!--username-->
          <span class="hidden-folded m-l-xs">${user.username}</span>
        </a>
        <!-- / brand -->
      </div>
      
      <div class="collapse pos-rlt navbar-collapse box-shadow bg-white-only">
        <!-- buttons -->
        <div class="nav navbar-nav hidden-xs">
          <a href="#" class="btn no-shadow navbar-btn" data-toggle="class:app-aside-folded" data-target=".app">
            <i class="fa fa-dedent fa-fw text"></i>
            <i class="fa fa-indent fa-fw text-active"></i>
          </a>
          <a href class="btn no-shadow navbar-btn" data-toggle="class:show" data-target="#aside-user" id="grzl">
            <i class="icon-user fa-fw">刷新</i>
          </a>
        </div>
        <!-- / buttons -->

        <!-- link and dropdown -->
       <ul class="nav navbar-nav hidden-sm">
          <li class="dropdown pos-stc">
            
            <div class="dropdown-menu wrapper w-full bg-white">
              <div class="row">
                <!--消息-->
				          </li>
				          <li class="dropdown">
				            <a href="#" data-toggle="dropdown" class="dropdown-toggle">
				              <i class="fa fa-fw fa-plus visible-xs-inline-block"></i>
				              <span translate="header.navbar.new.NEW">消息</span> <span class="caret"></span>
				            </a>
				            <ul class="dropdown-menu" role="menu">
				              <li><a href="#" translate="header.navbar.new.PROJECT">商家留言</a></li>
				              <li>
				                <a href>
				                  <span class="badge bg-info pull-right">${num}</span>
				                  <span translate="header.navbar.new.TASK">好友留言</span>
				                </a>
				              </li>
				              <li><a href translate="header.navbar.new.USER">时间提醒</a></li>
				            </ul>
				          </li>
        </ul>
        <!-- / link and dropdown -->

	        <!-- nabar right -->
	        <ul class="nav navbar-nav navbar-right">
	          <
	          <li class="dropdown">
	            <a href="#" data-toggle="dropdown" class="dropdown-toggle clear" data-toggle="dropdown">
	              <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
	              	<!--头像照片-->
	                <img src="././fileup/${user.photo}" alt="...">
	                <i class="on md b-white bottom"></i>
	              </span>
	              <!--名字-->
	              <span class="hidden-sm hidden-md">${user.username}</span> <b class="caret"></b>
	            </a>
	            <!-- dropdown -->
	            <ul class="dropdown-menu animated fadeInRight w">
	              <li>
	                <a href="login?username=${user.username}&password=${user.password}">
	                  <span>首页</span>
	                </a>
	              </li>
	              <li>
	                <a href="././register.jsp">
	                  <span>注册</span>
	                </a>
	              </li>
	              <li>
	                <a href="././index?jsp=index">注销</a>
	              </li>
	              <li>
	                <a href="././login.jsp">切换账号</a>
	              </li>
	            </ul>
	          </li>
	        </ul>
      </div>
    </div>

    <!-- menu -->
    <div class="app-aside hidden-xs bg-dark">
      <div class="aside-wrap">
        <div class="navi-wrap">
          
          <nav ui-nav class="navi">
            <ul class="nav">
              <li ng-class="{active:$state.includes('app.ui')}">
                <a href class="auto">
                  <span class="pull-right text-muted">
                    <i class="fa fa-fw fa-angle-right text"></i>
                    <i class="fa fa-fw fa-angle-down text-active"></i>
                  </span>
                  <i class="glyphicon glyphicon-briefcase icon"></i>
                  <span translate="aside.nav.components.ui_kits.UI_KITS">个人信息</span>
                </a>
                <ul class="nav nav-sub dk">
                  <li ui-sref-active="active" id="grxxck">
                    <a ui-sref="app.ui.buttons">
                      <span translate="aside.nav.components.ui_kits.BUTTONS">个人信息查看</span>
                    </a>
                  </li>
                  <li ui-sref-active="active" id="grxxxg">
                    <a ui-sref="app.ui.grid">
                      <span translate="aside.nav.components.ui_kits.GRID">个人信息修改</span>
                    </a>
                  </li>
                  <li ui-sref-active="active" id="shdzgl">
                    <a ui-sref="app.ui.sortable">
                      <span translate="aside.nav.components.ui_kits.SORTABLE">收货地址管理</span>
                    </a>
                  </li>
                  
                  <li ui-sref-active="active" id="yssz">
                    <a ui-sref="app.ui.timeline">
                      <span translate="aside.nav.components.ui_kits.TIMELINE">隐私设置</span>
                    </a>
                  </li>
                  <li ui-sref-active="active" id="xgmm">
                    <a ui-sref="app.ui.tree">
                      <span>修改密码</span>
                    </a>
                  </li>
                </ul>
              </li>
              <li ng-class="{active:$state.includes('app.table')}">
                <a href class="auto">
                  <span class="pull-right text-muted">
                    <i class="fa fa-fw fa-angle-right text"></i>
                    <i class="fa fa-fw fa-angle-down text-active"></i>
                  </span>
                  <b class="label bg-primary pull-right">${num}</b>
                  <i class="glyphicon glyphicon-list"></i>
                  <span translate="aside.nav.components.table.TABLE">留言</span>
                </a>
                <ul class="nav nav-sub dk">
                  <li class="nav-sub-header">
                    <a href>
                      <span translate="aside.nav.components.table.TABLE">留言</span>
                    </a>
                  </li>
                  <li ui-sref-active="active" id="sjly">
                    <a ui-sref="app.table.static">
                      <span translate="aside.nav.components.table.TABLE_STATIC">商家留言</span>
                    </a>
                  </li>
                  <li ui-sref-active="active" id="twrdzh">
                    <a ui-sref="app.table.datatable">
                    	<b class="label bg-primary pull-right">${num}</b>
                      <span translate="aside.nav.components.table.DATATABLE">同玩人打招呼</span>
                    </a>
                  </li>
                </ul>
              </li>
              
              <li ui-sref-active="active" id="gwc">
                <a ui-sref="app.chart">
                  <i class="glyphicon glyphicon-signal"></i>
                  <span translate="aside.nav.components.CHART">购物车</span>
                </a>
              </li>
              <li ui-sref-active="active" id="dd">
                <a ui-sref="app.chart">
                  <i class="glyphicon glyphicon-file icon"></i>
                  <span translate="aside.nav.components.pages.POST">订单</span>
                </a>
              </li>
              <li ui-sref-active="active" id="sc">
                <a ui-sref="app.page.invoice">
                  <i class="glyphicon glyphicon-edit"></i>
                  <span translate="aside.nav.components.pages.INVOICE">收藏</span>
                </a>
              </li>
            </ul>
          </nav>
         
        </div>
      </div>
    </div>
    <!-- / menu -->

    <!-- content -->
    <div class="app-content">
      <div ui-butterbar></div>
      <a href class="off-screen-toggle hide" data-toggle="class:off-screen" data-target=".app-aside" ></a>
      <div class="app-content-body fade-in-up">
        <!-- COPY the content from "tpl/" -->
          <div class="hbox hbox-auto-xs hbox-auto-sm">
            <div class="col">
              <div style="background:url(././img/c4.jpg) center center; background-size:cover">
                <div class="wrapper-lg bg-white-opacity">
                  <div class="row m-t">
                    <div class="col-sm-7">
                      <a href class="thumb-lg pull-left m-r">
                      	<!--头像-->
                        <img src="././fileup/${user.photo}" class="img-circle">
                      </a>
                      <div class="clear m-b">
                        <div class="m-b m-t-sm">
                          <span class="h3 text-black">${user.username}</span>
                        </div>

                      </div>
                    </div>
                    <div class="col-sm-5">
                      <div class="pull-right pull-none-xs text-center">
                        <a href class="m-b-md inline m">
                          <span class="h3 block font-bold">20000.0</span>
                          <small>账户余额</small>
                        </a>
                        <a href class="m-b-md inline m">
                          <span class="h3 block font-bold">666.0</span>
                          <small>已消费</small>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="asd" style="height: 800px; border: none;overflow:hidden "> 
              <!-- 包含页面 -->     
				<iframe src="index?username=${user.username}&jsp=useronexx" width="100%" height="100%"></iframe>
              </div>
              
              
            </div>
            <div class="col w-lg bg-light lter b-l bg-auto">
              <div class="wrapper">
                <div class="">
                  <h4 class="m-t-xs m-b-xs">推荐好友</h4>
                  <ul class="list-group no-bg no-borders pull-in">
                  	<!--好友-->
                  	<s:set value="1" var="nu"></s:set>
                  	<s:iterator value="recommendUsers" var="recommendUsers">
                  	<form action="index?jsp=dzh&username=${user.username }&friendname=<s:property value="#recommendUsers.username"/>" method="post">
                  		<li class="list-group-item">
	                      <a herf class="pull-left thumb-sm avatar m-r">	
	                        <img src="././fileup/<s:property value="#recommendUsers.photo"/>" alt="..." class="img-circle">
	                        <i class="on b-white bottom"></i>
	                      </a>
	                      <div class="clear">
	                      <div><a><s:property value="#recommendUsers.username"/></a>
	                      
	                        <a href="#<s:property value="#recommendUsers.username"/>" role="button" class="btn btn-default" data-toggle="modal">打招呼</a></div>
						      <div id="<s:property value="#recommendUsers.username"/>" class="modal" data-easein="swoopIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						        <div class="modal-dialog">
						          <div class="modal-content">
						            <div class="modal-header">
						              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						              <h4 class="modal-title">打招呼</h4>
						            </div>
						            
						            <div class="modal-body">
						              <textarea name="contentto" rows="10" cols="78" id="chat"></textarea>
						            </div>
						            <div class="modal-footer">
						              <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</button>
						              <input type="submit" class="btn btn-primary"  value="发送"/> 
						            </div>
						            
						          </div>
						        </div>
						        
						      </div>
						     <s:set value="#nu+1" var="nu"></s:set>
	                        <small class="text-muted"><s:property value="#recommendUsers.speak"/></small>
	                      </div>
                    	</li> 	
                    	</form>
                  	</s:iterator> 
                  </ul><br><hr>
                  <h4 class="m-t-xs m-b-xs">推荐景点</h4>
                  <ul class="list-group no-bg no-borders pull-in">
                  	<!--景点-->
                  	<s:iterator value="recommendTravels" var="recommendTravels">
                  		<li class="list-group-item">
	                      <a herf class="pull-left thumb-sm avatar m-r">	
	                        <img src="././fileup/<s:property value="#recommendTravels.bigphoto"/>" alt="..." class="img-circle">
	                        <i class="on b-white bottom"></i>
	                      </a>
	                      <div class="clear">
	                        <div><a href="index?username=${user.username}&jsp=travelone&goodsid=<s:property value="#recommendTravels.goodsid"/>" target='_BLANK'><s:property value="#recommendTravels.name"/></a></div>
	                        <small class="text-muted"><s:property value="#recommendTravels.price"/></small>
	                      </div>
                    	</li> 	
                  	</s:iterator> 
                  </ul><br><hr>
                </div>
              </div>
            </div>
           
            
          </div>
        <!-- PASTE above -->
      </div>
    </div>
  </div>
  <div id="jsp" style="display: none;" >${jsp}</div>
  <!-- jQuery -->
  <script src="././vendor/jquery/jquery.min.js"></script>
<%--   <script src="././vendor/jquery/bootstrap.js"></script> --%>
  <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
  <script src='././js/velocity.min.js'></script> 
  <script src='././js/velocity.ui.min.js'></script> 
  <script type="text/javascript">
  	/* function addHrefPara(obj)
		{
		alert("123");
		var para = document.getElementById("chat").value;// 获取文本框中的值
		var href = document.getElementById("dzh").getAttribute("href");// 获取超链接HREF属性值
		var hrefNew = href + para;
		obj.setAttribute("href",hrefNew);		
		} */
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

  	if($('#jsp').html()=="grxx"){
  		$('iframe').attr('src','index?username=${user.username}&jsp=useronexx');
  	}else if($('#jsp').html()=="gwc"){
  		$('iframe').attr('src','shoppingbus?username=${user.username}&jsp=usergwc');
  	}else if($('#jsp').html()=="lyb"){
  		$('iframe').attr('src','index?username=${user.username}&jsp=chatF');
  	}else if($('#jsp').html()=="dd"){
  		$('iframe').attr('src','goods?username=${user.username}&jsp=usergoods');
  	}else if($('#jsp').html()=="sc"){
  		alert("此功能未开放！");
  		$('iframe').attr('src','');
  	}
  	
  	$('#grzl').click(function(){
		$('iframe').attr('src','index?username=${user.username}&jsp=useronexx');
	});
  	
  	$('#grxxck').click(function(){
		$('iframe').attr('src','index?username=${user.username}&jsp=useronexx');
	});
	$('#grxxxg').click(function(){
		$('iframe').attr('src','index?username=${user.username}&jsp=useronexxxg');
	});
	$('#shdzgl').click(function(){
		$('iframe').attr('src','address?username=${user.username}&jsp=useroneshdzgl');
	});
	$('#yssz').click(function(){
		alert("此功能未开放！");
	});
	$('#xgmm').click(function(){
		$('iframe').attr('src','index?username=${user.username}&jsp=useronexgmm');
	});
  	
  	/* 购物车 */
  	$('#gwc').click(function(){
		$('iframe').attr('src','shoppingbus?username=${user.username}&jsp=usergwc');
	});
	/* 订单 */
	$('#dd').click(function(){
		$('iframe').attr('src','goods?username=${user.username}&jsp=usergoods');
	});
	/* 收藏 */
	$('#sc').click(function(){
		alert("此功能未开放！");
	});
  	/* 同玩人打招呼 */
  	$('#twrdzh').click(function(){
		$('iframe').attr('src','index?username=${user.username}&jsp=chatF');
	});
    +function ($) {
      $(function(){
        // class
        $(document).on('click', '[data-toggle^="class"]', function(e){
          e && e.preventDefault();
          console.log('abc');
          var $this = $(e.target), $class , $target, $tmp, $classes, $targets;
          !$this.data('toggle') && ($this = $this.closest('[data-toggle^="class"]'));
          $class = $this.data()['toggle'];
          $target = $this.data('target') || $this.attr('href');
          $class && ($tmp = $class.split(':')[1]) && ($classes = $tmp.split(','));
          $target && ($targets = $target.split(','));
          $classes && $classes.length && $.each($targets, function( index, value ) {
            if ( $classes[index].indexOf( '*' ) !== -1 ) {
              var patt = new RegExp( '\\s' + 
                  $classes[index].
                    replace( /\*/g, '[A-Za-z0-9-_]+' ).
                    split( ' ' ).
                    join( '\\s|\\s' ) + 
                  '\\s', 'g' );
              $($this).each( function ( i, it ) {
                var cn = ' ' + it.className + ' ';
                while ( patt.test( cn ) ) {
                  cn = cn.replace( patt, ' ' );
                }
                it.className = $.trim( cn );
              });
            }
            ($targets[index] !='#') && $($targets[index]).toggleClass($classes[index]) || $this.toggleClass($classes[index]);
          });
          $this.toggleClass('active');
        });

        // collapse nav
        $(document).on('click', 'nav a', function (e) {
          var $this = $(e.target), $active;
          $this.is('a') || ($this = $this.closest('a'));
          
          $active = $this.parent().siblings( ".active" );
          $active && $active.toggleClass('active').find('> ul:visible').slideUp(200);
          
          ($this.parent().hasClass('active') && $this.next().slideUp(200)) || $this.next().slideDown(200);
          $this.parent().toggleClass('active');
          
          $this.next().is('ul') && e.preventDefault();

          setTimeout(function(){ $(document).trigger('updateNav'); }, 300);      
        });
      });
    }(jQuery);
    
  </script>
</body>
</html>