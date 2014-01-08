<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ÑéÖ¤µÇÂ¼</title>
</head>
<body>
<jsp:useBean id="login" class="DateManger.LoginInfo" scope="page"></jsp:useBean>
<jsp:useBean id="ensure" class="DateManger.LoginManger" scope="page"></jsp:useBean>
<jsp:useBean id="changestr" class="DateManger.DBMS" scope="page"></jsp:useBean>
<%String username; %>
<%String password; %>
            <%
                  boolean isExsit=false;
                  boolean isLogin=false;
                  username=changestr.ChangeCoding(request.getParameter("username"));
                  password=changestr.ChangeCoding(request.getParameter("password"));
                  login.setUserid(username);
                  login.setPassword(password);
                  isExsit=ensure.isExsit(login.getUserid());
                  if(isExsit)
                  {
                	   isLogin=ensure.isLogin(login.getUserid(),login.getPassword());
                	   if(isLogin)
                	   {
                		  response.sendRedirect("http://localhost:8080/EletronicWeb/index.jsp?number="+ensure.getNumber(login.getUserid()));  
                	   }else{
                		  response.sendRedirect("Login.jsp");
                	   }
                  }else{
                	  response.sendRedirect("Enroll.jsp");
                 
                  }
           %>
</body>
</html>