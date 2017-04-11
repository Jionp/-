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
			<h2>所有照片</h2>
		</caption>
		<tr>
			<th>OID点击修改</th>
			<th>OID点击查询</th>
			<th>项目编号</th>
			<th>图片地址</th>
			<th>图片描述</th>
		</tr>
		<s:iterator value="littlephotos" id="littlephotos">  
			   <tr>
			      <td>  
			         <a style="color: red" href="././LittlephotoShow?photospeak=<s:property value="#littlephotos.photospeak"/>&photoaddress=<s:property value="#littlephotos.photoaddress"/>&goodsid=<s:property value="#littlephotos.goodsid"/> &oid=<s:property value="#littlephotos.oid"/>&jsp=littlephotoChangeing">
			         <s:property value="#littlephotos.oid"/></a>
			      </td>    
			      <td>  
			         <a style="color: red" href="././photo?photoaddress=<s:property value="#littlephotos.photoaddress"/>&jsp=photo" target="_blank" onclick="window.open(this.href,'','width=700,height=500,top=300,left=500');return false"><s:property value="#littlephotos.oid"/></a>
			      </td>  
			      <td>  
			          <s:property value="#littlephotos.goodsid"/>  
			      </td>  
			      <td>  
			          <s:property value="#littlephotos.photoaddress"/> 
			      </td>  
			      <td>  
			         <s:property value="#littlephotos.photospeak"/>  
			      </td> 
			  </tr>  
		</s:iterator>
	</table>
</body>
</html>