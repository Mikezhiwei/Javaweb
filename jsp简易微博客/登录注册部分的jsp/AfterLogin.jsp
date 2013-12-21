<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>个人主页</title>
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
<jsp:useBean id="userown" scope="page" class="Login.UserManger"></jsp:useBean>
<jsp:useBean id="time" scope="page" class="Login.DBMS"></jsp:useBean>
<jsp:useBean id="updatetime" scope="page" class="Login.LoginManager"></jsp:useBean>
<%String currenttime; %>
<table cellpadding="0" border="0" width="750" align="center" class="style1">
      <tr align="center" bgcolor="#CCFF22" class="style1">
      <td>姓名</td>
      <td>登录帐号</td>
      <td>性别</td>
      <td>年龄</td>
      <td>职业</td>
      <td>住址</td>
      <td>电话</td>
      </tr>
      <%
          String userid=request.getParameter("userid");
          ResultSet res=userown.userinfo(userid);
           while(res.next())
           {
        	   %>
        	   <tr>
        	   <td><%=res.getString("name") %></td>
        	   <td><%=res.getString("id") %></td>
        	   <td><%=res.getString("sex") %></td>
        	   <td><%=res.getString("age") %></td>
        	   <td><%=res.getString("jod") %></td>
        	   <td><%=res.getString("address") %></td>
        	   <td><%=res.getString("phone") %></td>
        	   </tr>
        	   <%
           }
           userown.close();
      %>
</table>
<%
          currenttime=time.getLogintime();
          //String nowtime=time.getLogintime();
          updatetime.updateTime(currenttime,request.getParameter("userid"));
%>
<center>
<a href="UpdateUserInfo.jsp?userid=<%=request.getParameter("userid") %>">修改个人信息
<p>
<br>
</a>
<a href="UpdateLogin.jsp?userid=<%=request.getParameter("userid")%>">修改个人密码
</a>
<p>
<a href="http://localhost:8080/LoginSystem/Blog/Bloger.jsp?userid=<%=request.getParameter("userid") %>">发表微博</a>
<p>
<a href="http://localhost:8080/LoginSystem/Blog/MyBlog.jsp?userid=<%=request.getParameter("userid") %>">查看已经发表的微博</a>
<p>
<a href="Comnon.jsp?userid=<%=request.getParameter("userid") %>">查看他人的微博</a>
<p>
<a href="Main.jsp">注销登录</a>
<p>
<font size="3" color="purple"><%=currenttime%></font>
</center>
</body>
</html>