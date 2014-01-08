<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DateManger.BookInfo"%>
<%@page import="DateManger.BookManger"%>
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>图书浏览界面</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:useBean id="bookinfo" scope="page" class="DateManger.BookManger"></jsp:useBean>
<%-- 加入公共的主页--%>
<%@include file="/Main.jsp" %>

     <table class="style6" bgcolor="#FFFFFFF" border="0" cellpadding="1" width="755" align="center">
         <tr bgcolor="#008080" align="center" class="style4">
           <td height="30">标题
           </td>
           <td height="30">作者
           </td>
           <td height="30">出版社
           </td>
           <td height="30">价格
           </td>
           <td height="30">剩余
           </td>
            <td height="30">购买
           </td>
         </tr>
         <%
              ResultSet bookres=bookinfo.getBookinfo();
              while(bookres.next())
              {
            	  %>
            	  <tr align="center" class="style1" height="40" bgcolor="purple">
            	  <td><%=bookres.getString("title") %>
            	  </td>
            	  <td><%=bookres.getString("author") %>
            	  </td>
            	  <td><%=bookres.getString("pulish") %>
            	  </td>
            	  <td><%=bookres.getString("price") %>
            	  </td>
            	  <td><%=bookres.getString("leavenumber") %>
            	  </td>
                  <td><a href="">购买</a>
            	  </td>
            	  </tr>
            	  <% 
              }
         %>
     </table>  
     <%@include file="/rear.jsp" %>
</body>
</html>