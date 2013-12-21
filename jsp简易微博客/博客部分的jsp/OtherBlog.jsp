<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>他人主页</title>
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
<%! String userid; %>
<%! String myid; %>
<jsp:useBean id="blog" scope="page" class="Login.BlogManager"></jsp:useBean>
     <table cellpadding="0" border="0" width="750" align="center" class="style1"  bgcolor="#CCFF22" >
     <tr>
       <td>主题
       </td>
       <td>发表时间
       </td>
       <td>查看
      </tr>
      <%
           userid=request.getParameter("userid");
           myid=request.getParameter("myid");
           ResultSet res=blog.getBlog(userid);
           while(res.next())
           {
        	   %>
        	   <tr>
        	   <td><%=res.getString("theme")%></td>
        	   <td><%=res.getString("pulishtime") %></td>
        	   <td><a href="OneBlog.jsp?number=<%=res.getString("number")%>&theme=<%=res.getString("theme") %>"><%=res.getString("theme") %></a></td>
        	   </tr>
        	   <% 
           }
           %>
           
   </table>
   <a href="http://localhost:8080/LoginSystem/Login/AfterLogin.jsp?userid=<%=myid %>">返回我的主页</a>
   <a href="http://localhost:8080/LoginSystem/Login/Comnon.jsp?userid=<%=myid %>">返回朋友圈</a>
</body>
</html>