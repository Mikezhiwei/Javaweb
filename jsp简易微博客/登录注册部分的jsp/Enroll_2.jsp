<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Login.EnroolManager"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册中</title>
<style type="text/css">
  <!--
      .style1{
       font-size:"12px";
       color:#000000;
      }
      body{
      background-color:#FFFFCC;
      }
      -->
 </style>
</head>
<body>
<jsp:useBean id="enroll" scope="page" class="Login.EnroolManager"></jsp:useBean>
<jsp:useBean id="str"scope="page"class="Login.DBMS"></jsp:useBean>
<%!int count[]=new int[2]; %>
<%
          String user[]=new String [8];
          String userright;
          String userid=str.ChangeCoding(request.getParameter("userid"));
          String password=str.ChangeCoding(request.getParameter("password"));
          user[0]=str.ChangeCoding(request.getParameter("name"));
          user[1]=str.ChangeCoding(request.getParameter("userid"));
          user[2]=str.ChangeCoding(request.getParameter("sex"));
          user[3]=str.ChangeCoding(request.getParameter("age"));
          user[4]=str.ChangeCoding(request.getParameter("job"));
          user[5]=str.ChangeCoding(request.getParameter("address"));
          user[6]=str.ChangeCoding(request.getParameter("phone"));
          user[7]=str.ChangeCoding(request.getParameter("right"));
          userright=str.ChangeCoding(request.getParameter("right"));
          count=enroll.EnrollUser(user,userid,password,userright);
         if(count[0]!=0&&count[1]!=0)
         {
        	 %>
        	 <font size="3" color="blue">注册成功,尝试<a href="Main.jsp">登录</a></font>
        	 <% 
         }else{
        	 %>
        	 <font size="3" color="red">注册失败,请返回重新注册<a href="Enroll.jsp"></a></font>
        	 <% 
         }
%>
</body>
</html>