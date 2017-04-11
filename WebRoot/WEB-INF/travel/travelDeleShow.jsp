<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>项目查询</title>
<link rel="stylesheet" type="text/css" href="././css/style-bookdele&bookshow.css"/>
</head>
<body>
	<table class="tab" border="1" cellspacing="0">
		<caption>
			<h2>所有项目</h2>
		</caption>
		<tr>
			<th>项目编号</th>
			<th>项目名称</th>
			<th>项目头像</th>
			<th>项目地址</th>
			<th>项目价格</th>
			<th>交易数目</th>
		</tr>
		<s:iterator value="travels" id="travels">  
			   <tr>  
			      <td>  
			         <a style="color: red" href="./TravelShow?jsp=traveldele&goodsid=<s:property value="#travels.goodsid"/>"><s:property value="#travels.goodsid"/></a>
			      </td>  
			      <td>  
			          <s:property value="#travels.name"/>  
			      </td>  
			      <td>  
			          <s:property value="#travels.bigphoto"/> 
			      </td>  
			      <td>  
			         <s:property value="#travels.address"/>  
			      </td> 
			      <td>  
			         <s:property value="#travels.price"/>  
			      </td>  
			      <td>  
			         <s:property value="#travels.buynumber"/>  
			      </td> 
			  </tr>  
		</s:iterator>
	</table>
</body>
</html>