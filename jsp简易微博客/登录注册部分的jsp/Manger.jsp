<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Login.UserManger"%>
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>管理员专用</title>
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
<jsp:useBean id="users" scope="page" class="Login.UserManger"></jsp:useBean>
<jsp:useBean id="login" scope="page" class="Login.LoginManager"></jsp:useBean>
<center>
<font size="3" color="blue">本网站用户</font>
</center>
<div align="center">
   <table cellpadding="0" border="0" width="750" class="style1" bgcolor="#CCFF22">
       <tr bgcolor="#CCCCCC">
         <td>姓名
         </td>
         <td>用户id
         </td>
         <td>性别
         </td>
         <td>年龄
         </td>
         <td>职业
         </td>
         <td>住址
         </td>
         <td>电话
         </td>
       </tr>
       <%
            String managerid=request.getParameter("userid");
            ResultSet res=users.userinfo();
            while(res.next())
            {
            	if(res.getString("ran").equals("1"))
            	{
            	 %>
            	 <tr>
            	   <td><%=res.getString("name") %>
            	   </td>
            	   <td><%=res.getString("id") %>
            	   </td>
            	   <td><%=res.getString("sex") %>
            	   </td>
            	   <td><%=res.getString("age") %>
            	   </td>
            	   <td><%=res.getString("jod") %>
            	   </td>
            	   <td><%=res.getString("address") %>
            	   </td>
            	   <td><%=res.getString("phone") %>
            	   </td>
            	   <td><a href="Deluser.jsp?userid=<%=res.getString("id") %>">删除</a>
            	   </td>
            	 </tr>
            	 <%
            	}else{
            		continue;
            	}
            }
            login.updateTime(login.getlogintime(),managerid);
       %>
   </table>
</div>
</body>
</html>