<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>删除用户中</title>
</head>
<body>
<jsp:useBean id="del" scope="page" class="Login.UserManger"></jsp:useBean>
<jsp:useBean id="logindel" scope="page" class="Login.LoginManager"></jsp:useBean>
<jsp:useBean id="blogdel" scope="page" class="Login.BlogManager"></jsp:useBean>
  <%
          String userid=request.getParameter("userid");
          int count=del.delUser(userid);
          logindel.delId(userid);
          blogdel.delBloguserid(userid);
          if(count!=0)
          {
        	  %>
        	  <font size="2" color="blue">删除成功</font>
        	  <%
        	  response.sendRedirect("http://localhost:8080/LoginSystem/Login/Manger.jsp?");
          }else{
        	  %>
        	  <font size="3" color="red">删除失败</font>
        	  <% 
          }
   %>
</body>
</html>