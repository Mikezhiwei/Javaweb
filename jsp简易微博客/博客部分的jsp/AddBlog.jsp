<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Login.BlogManager"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>发表中</title>
</head>
<body>
<jsp:useBean id="blog" scope="page" class="Login.BlogManager"></jsp:useBean>
<jsp:useBean id="str" scope="page" class="Login.DBMS"></jsp:useBean>
<%
         int count=0;
         String bloger[]=new String[5];
         String userid=request.getParameter("userid");//得到用户的id；
         String username=str.ChangeCoding(request.getParameter("username")); 
         bloger[1]=str.ChangeCoding(request.getParameter("userid"));
         bloger[0]=str.ChangeCoding(request.getParameter("username"));
         bloger[2]=str.ChangeCoding(request.getParameter("theme"));
         bloger[3]=str.ChangeCoding(request.getParameter("article"));
         bloger[4]=str.ChangeCoding(blog.getnowtime());
         //System.out.println(bloger[2]);
         //System.out.println(bloger[3]);
         count=blog.insertBlog(bloger);
         if(count!=0)
         {
        	 %>
        	 <font size="3" color="blue">发表成功</font>
        	 <%
        	 response.sendRedirect("http://localhost:8080/LoginSystem/Login/AfterLogin.jsp?userid="+userid);
        }else{
        	 %>
        	 <font size="3" color="red">发表失败</font>
        	 <% 
         }
         
%>
</body>
</html>