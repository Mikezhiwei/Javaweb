<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>虚拟购书网站主页</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>
 <%-- 引入页头--%>
<%@include file="Main.jsp" %>
  <%--引入左边的动态栏目--%>
<%@include file="left.jsp" %>
  <%--- 引入中间的主题部分--%>
<%@include file="maininfo.jsp" %>
 <%---引入页尾的说明部分 --%>
<%@include file="rear.jsp" %>

</body>
</html>