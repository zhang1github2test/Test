<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.jeelearing.bean.PersonBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获取请求对象里的属性</title>
</head>
<body>
	<h4>直接获取请求对象的属性</h4>
	姓名：<%= request.getAttribute("name") %>
	<!-- 当获取到的属性为JavaBean对象时，可以使用两种方式 -->
	<h4>方式一：使用java脚本</h4>
	<% PersonBean p  = (PersonBean)request.getAttribute("person"); %>
	获取的人名:<%= p.getName() %>
	
	<h4>方式二：使用jsp标准动作</h4>
	<jsp:useBean id="person" class="com.jeelearing.bean.PersonBean" scope ="request"/>
	获取的人名：<jsp:getProperty property="name" name="person"/> 
	
 	<h4>再次初始化personBean，然后获得其值</h4>
	<jsp:useBean id= "person1" class = "com.jeelearing.bean.PersonBean" scope="request"/>
			<jsp:setProperty property="name" name="person1" value="张太难"/>
	获取的人名：<jsp:getProperty property="name" name="person1"/>
</body>
</html>