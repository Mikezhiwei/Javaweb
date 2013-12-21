<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Login.UserManger"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改个人信息中</title>
</head>
<body>
<jsp:useBean id="update" scope="page" class="Login.UserManger"></jsp:useBean>
<jsp:useBean id="str" scope="page" class="Login.DBMS"></jsp:useBean>
<%
          String userinfo[]=new String[7];
          userinfo[0]=str.ChangeCoding(request.getParameter("username"));
          userinfo[1]=str.ChangeCoding(request.getParameter("userid"));
          userinfo[2]=str.ChangeCoding(request.getParameter("sex"));
          userinfo[3]=str.ChangeCoding(request.getParameter("age"));
          userinfo[4]=str.ChangeCoding(request.getParameter("job"));
          userinfo[5]=str.ChangeCoding(request.getParameter("address"));
          userinfo[6]=str.ChangeCoding(request.getParameter("phone"));
          String userid=str.ChangeCoding(request.getParameter("userid"));
          int i=0;
          i=update.updataUser(userinfo,userid);
          if(i!=0)
          {
        	  %>
          	  <font size="3" color="blue">修改成功</font>
          	  <a href="AfterLogin.jsp?userid=<%=userid %>">返回</a>
          	  <%
          }else{
        	  %>
        	  <font size="3" color="red">修改失败</font>
        	  <a href="AfterLogin.jsp?userid=<%=userid %>">返回</a>
        	  <%
        	  
          }
          
          
%>
</body>
</html>