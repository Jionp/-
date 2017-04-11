<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>html5用户注册页面模板</title>


<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<![endif]-->

<link href="././css/normalize.css" rel="stylesheet"/>
<link href="././css/jquery-ui.css" rel="stylesheet"/>
<link href="././css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

<style type="text/css">
body{font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;color: #222;background:url(./pattern.png);overflow-y:scroll;padding:60px 0 0 0;}
#my-form{width:755px;margin:0 auto;border:1px solid #ccc;padding:3em;border-radius:3px;box-shadow:0 0 2px rgba(0,0,0,.2);}
#comments{width:350px;height:100px;}
</style>

</head>
<body>


<div class="row">

  <div class="eightcol last">

    <!-- Begin Form -->

    <form id="my-form" method="post" action="././LittlephotoShow?jsp=photoadd" enctype="multipart/form-data">

        <section name="第一步">
		  <s:actionerror/>
          <div><label>产品编号:</label><input name="goodsid" type="text"/></div>
          <div><label>图片描述:</label><input type="text" name="photospeak" "/></div>
          <div><label>上传图片:</label><input id="file" name="upload" multiple type="file"/></div>
      <div><hr/></div>

      <div>
        <button type="submit">提交</button>
        <button id="reset" type="button">重置</button>
      </div>

    </form>

    <!-- End Form -->

  </div>

</div>


<script type="text/javascript" src="././js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="././js/jquery-ui.min.js"></script>
<script type="text/javascript" src="././js/jquery.idealforms.js"></script>
<script type="text/javascript">
var options = {

//	onFail: function(){
//		alert( $myform.getInvalid().length +' invalid fields.' )
//	},

	inputs: {
		'password': {
			filters: 'required pass',
		},
		'username': {
			filters: 'required username',
			data: {
			//ajax: { url:'validate.php' }
			}
		},
		'file': {
			filters: 'extension',
			data: { extension: ['jpg'] }
		},
		'comments': {
			filters: 'min max',
			data: { min: 50, max: 200 }
		},
		
	}
	
};

var $myform = $('#my-form').idealforms(options).data('idealforms');

$('#reset').click(function(){
	$myform.reset().fresh().focusFirst()
});

$myform.focusFirst();
</script>

</div>
</body>
</html>
