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
<title>订单查询</title>
<link rel="stylesheet" type="text/css" href="././css/style-bookdele&bookshow.css"/>
</head>
<body>
	<table class="tab" border="1" cellspacing="0">
		<caption>
			<h2>所有项目</h2>
		</caption>
		<tr>
			<th>订单号 </th>
			<th>用户名 </th>
			<th>产品编号</th>
			<th>订单时间</th>
			<th>出行时间</th>
			<th>出行真实姓名</th>
			<th>出行身份证</th>
		</tr>
		<s:iterator value="goods" id="goods">  
			   <tr>  
			   	  <td>  
			   	  	 <s:property value="#goods.oid"/>
			      </td>
			      <td>  
			         <s:property value="#goods.username"/>
			      </td>  
			      <td>  
			          <s:property value="#goods.goodsid"/>  
			      </td>  
			      <td>  
			          <s:property value="#goods.intime"/> 
			      </td>  
			      <td>  
			         <s:property value="#goods.gotime"/>  
			      </td> 
			      <td>  
			         <s:property value="#goods.name"/>  
			      </td>  
			      <td>  
			         <s:property value="#goods.cardid"/>  
			      </td> 
			  </tr>  
		</s:iterator>
	</table>
</body>
</html>