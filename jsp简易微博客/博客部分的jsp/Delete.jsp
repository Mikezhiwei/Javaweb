<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>删除中</title>
</head>
<body>
<jsp:useBean id="blog" scope="page" class="Login.BlogManager"></jsp:useBean>
<%
             String number=request.getParameter("number");
             String userid=request.getParameter("userid");
             String theme=request.getParameter("theme");
             System.out.println(userid);
             System.out.println(theme);
             int count=blog.delBolg(number);
             if(count==0)
             {
            	 %>
            	 <font size="3" color="red">删除失败</font>
            	 <a href="MyBlog.jsp?userid=<%=request.getParameter("userid") %>">返回</a>
            	 <% 
             }else{
            	 %>
            	 <font size="3" color="blue">删除成功</font>
            	 <a href="MyBlog.jsp?userid=<%=request.getParameter("userid") %>">返回</a>
            	 <% 
             }
%>
</body>
</html>