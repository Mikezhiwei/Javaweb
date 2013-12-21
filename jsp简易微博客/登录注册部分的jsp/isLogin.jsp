<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录中</title>
</head>
<body>
<jsp:useBean id="login" scope="page" class="Login.LoginManager"></jsp:useBean>
<jsp:useBean id="str" scope="page" class="Login.DBMS"></jsp:useBean>
<%!boolean islogin; %>
<%!boolean id; %>
<%
             String id=str.ChangeCoding(request.getParameter("userid"));
             String userid=str.ChangeCoding(request.getParameter("userid"));
             String password=str.ChangeCoding(request.getParameter("password"));
             String right=str.ChangeCoding(request.getParameter("right"));
             islogin=login.isLogin(userid,password);
             if(islogin)
             {
                    if(login.isRight(right,id))
                {
            		 if(right.equals("1"))
            	   {   		
            	   response.sendRedirect("http://localhost:8080/LoginSystem/Login/AfterLogin.jsp?userid="+userid);
            	  }else{
            		response.sendRedirect("http://localhost:8080/LoginSystem/Login/Manger.jsp?userid="+userid);
            	   }
               }else{
            	   %>
            	   <font size="3" color="red">登录失败,权限错误</font>
            	   <a href="Main.jsp">返回首页</a>
            	   <% 
               }
            }else{
            	 %>
            	 <font size="2" color="red">登录失败,用户名不存在,或者密码错误</font>
            	 <a href="Main.jsp">返回首页</a>
            	 <%  
             }
%>
</body>
</html>