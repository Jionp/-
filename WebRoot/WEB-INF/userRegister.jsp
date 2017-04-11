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

<link href="./css/normalize.css" rel="stylesheet"/>
<link href="./css/jquery-ui.css" rel="stylesheet"/>
<link href="./css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

<style type="text/css">
body{font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;color: #222;background:url(pattern.png);overflow-y:scroll;padding:60px 0 0 0;}
#my-form{width:755px;margin:0 auto;border:1px solid #ccc;padding:3em;border-radius:3px;box-shadow:0 0 2px rgba(0,0,0,.2);}
#comments{width:350px;height:100px;}
</style>

</head>
<body>


<div class="row">

  <div class="eightcol last">

    <!-- Begin Form -->

    <form id="my-form" method="post" action="./adminregister?jsp=userRegister" enctype="multipart/form-data">

        <section name="第一步">
		  <s:actionerror/>
          <div><label>用户名:</label><input id="username" name="username" type="text"/></div>
          <div><label>密码:</label><input id="pass" name="password" type="password"/></div>
          <div><label>电话:</label><input type="tel" name="phone" /></div>
          <div>
						<label>出生日期:</label><input name="date" class="datepicker"
							data-ideal="date" type="text" placeholder="月/日/年" />
					</div>
					<div>
						<label>性别:</label>
							<select name="sex">
									<option value ="男" selected="selected">男</option>
  								<option value ="女">女</option>
							</select>
						
					</div>
          
        </section>

        <section name="第二步">
        	<div><label>上传头像:</label><input id="file" name="upload" multiple type="file"/></div>
          <div><label>个性签名:</label><input name="speak"  type="text" maxlength="2"/></div>
        </section>

        

      <div><hr/></div>

      <div>
        <button type="submit">提交</button>
        <button id="reset" type="button">重置</button>
      </div>

    </form>

    <!-- End Form -->

  </div>

</div>


<script type="text/javascript" src="./js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript" src="./js/jquery.idealforms.js"></script>
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
