<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DateManger.BookInfo"%>
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ͼ������</title>
</head>
<body>
<jsp:useBean id="book" class="DateManger.BookInfo"></jsp:useBean>
<jsp:useBean id="bookinfo" class="DateManger.BookManger"></jsp:useBean>
   <%@include file="/Main.jsp" %>
         <%
             ResultSet res=bookinfo.getBookinfo_number(request.getParameter("number"));
             res.next();
          %>     
          <table width="750"align="center" bgcolor="red" class="style1">
            <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">ISBN��
              </td>
              <td width="86%" align="center"><%=res.getString("isbn") %>
            </tr>
            <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">����
              </td>
              <td width="86%" align="center"><%=res.getString("title") %>
            </tr>
             <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">����
              </td>
              <td width="86%" align="center"><%=res.getString("author") %>
            </tr>
           <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">������
              </td>
              <td width="86%" align="center"><%=res.getString("pulish") %>
            </tr>
           <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">����ʱ��
              </td>
              <td width="86%" align="center"><%=res.getString("pulishdate") %>
            </tr>
             <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">�г���
              </td>
              <td width="86%" align="center"><%=res.getString("price") %>
            </tr>
           <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">���
              </td>
              <td width="86%" align="center"><%=res.getString("leavenumber") %>
            </tr>
             <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">����������
              </td>
              <td width="86%" align="center"><%=res.getString("comment") %>
            </tr>
          </table>
          <%
       %>
     
   <%@include file="/rear.jsp" %>
</body>
</html>