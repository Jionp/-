<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>会员展示</title>
<link rel="stylesheet" type="text/css" href="./css/style-bookdele&bookshow.css"/>

</head>

<body>
	<table class="tab" border="1" cellspacing="0">
		<caption>
			<h2>所有会员</h2>
		</caption>
		<tr>
			<th>用户名</th>
			<th>密码</th>
			<th>性别</th>
			<th>年龄</th>
			<th>电话</th>
			<th>权限</th>
		</tr>
		<s:iterator value="admins" id="admins">  
			   <tr>  
			      <td>  
			         <a style="color: red" href="./manage?jsp=adminchange&username=<s:property value="#admins.username"/>"><s:property value="#admins.username"/></a>
			      </td>  
			      <td>  
			          <s:property value="#admins.password"/>  
			      </td>  
			      <td>  
			          <s:property value="#admins.sex"/> 
			      </td>  
			      <td>  
			         <s:property value="#admins.age"/>  
			      </td> 
			      <td>  
			         <s:property value="#admins.phone"/>  
			      </td>  
			      <td>  
			         <s:property value="#admins.power"/>  
			      </td> 
			  </tr>  
		</s:iterator>
	</table>
</body>
</html>
