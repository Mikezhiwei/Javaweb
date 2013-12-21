<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>朋友圈</title>
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
<table cellpadding="0" border="0" width="750" align="center" bgcolor="##CCFF22" class="style1">
   <tr>
      <td >姓名
      </td>
      <td>用户id
      </td>
       </tr>
   <%
        String myid=request.getParameter("userid");
         ResultSet res=users.userinfo();
        while(res.next())
        {
        	if(myid.equals(res.getString("id")))
        	{
        		continue;
        	}
            if(res.getString("ran").equals("2")){
        		continue;
        	}
        	else{
        	  %>
        	<tr>
        	     <td>
        	     <a href="http://localhost:8080/LoginSystem/Blog/OtherBlog.jsp?userid=<%=res.getString("id") %>&myid=<%=myid %>"><%=res.getString("name") %></a>
        	     </td>
        	     <td>
        	     <%=res.getString("id") %>
        	     </td>
        	</tr>
        	<%
        	}
        }
       
   %>
</table>
<a href="AfterLogin.jsp?userid=<%=myid%>">返回个人主页</a>
</body>
</html>