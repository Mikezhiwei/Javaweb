<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Login.BlogManager"%>
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>我的微博</title>
</head>
<body>
<jsp:useBean id="blog" scope="page" class="Login.BlogManager"></jsp:useBean>
<%! String userid;%>
<%! String blogtheme; %>
   <table cellpadding="0" border="0" width="750" align="center" class="style1"  bgcolor="#CCFF22" >
     <tr>
       <td>主题
       </td>
       <td>发表时间
       </td>
       <td>查看
       </td>
       <td>删除
       </td>
       <td>修改
       </td>
     </tr>
      <%
           userid=request.getParameter("userid");
           ResultSet res=blog.getBlog(userid);
           while(res.next())
           {
        	   %>
        	   <tr>
        	   <td><%=res.getString("theme")%></td>
        	   <td><%=res.getString("pulishtime") %></td>
        	   <td><a href="OneBlog.jsp?number=<%=res.getString("number")%>&theme=<%=res.getString("theme") %>"><%=res.getString("theme") %></a></td>
        	   <td><a href="DelBlog.jsp?number=<%=res.getString("number")%>">删除</a></td>
        	   <td><a href="UpdateBlog.jsp?number=<%=res.getString("number") %>">修改</a>
        	   </tr>
        	   <% 
           }
           %>
   </table>
<a href="http://localhost:8080/LoginSystem/Login/AfterLogin.jsp?userid=<%=request.getParameter("userid") %>">返回</a>
   </body>
</html>