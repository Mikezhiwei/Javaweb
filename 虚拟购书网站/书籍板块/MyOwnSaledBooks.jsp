<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DateManger.BookManger"%>
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>�Ѿ���������</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>
   <jsp:useBean id="mybooks" scope="page" class="DateManger.BookManger"></jsp:useBean>
   <%@include file="/Main.jsp" %>
           <table class="style6" bgcolor="#FFFFFFF" border="0" cellpadding="1" width="755" align="center">
             <tr bgcolor="#008080" align="center" class="style4">
                <td height="30">����
                </td>
                <td height="30">����
                </td>
                <td height="30">������
                </td>
                <td height="30">����
                </td>
                <td height="30">�����۸�
                </td>
                <td height="30">�޸���Ϣ
                </td>
             </tr>
             <%
                ResultSet res=mybooks.getBookinfo_salerid(mybooks.ChangeFromString(request.getParameter("number")));
                while(res.next())
                { 
                	  %>
                	   <tr align="center" class="style1" height="40" bgcolor="skyblue">
                	   <td height="50"><%=res.getString("title") %>
                	   </td>
                	   <td height="50"><%=res.getString("author") %>
                	   </td>
                	   <td height="50"><%=res.getString("pulish") %>
                	   </td>
                	   <td height="50"><%=res.getString("leavenumber") %>
                	   </td>
                	   <td height="50"><%=res.getString("price") %>
                	   </td>
                	   <td height="50"><a href="Updatebookinfo.jsp?bnumber=<%=res.getObject(1)%>&number=<%=request.getParameter("number") %>">�޸�</a>
                	  </tr>
                	  <%
                }
                mybooks.close();
             %>
          </table>
   <%@include file="/rear.jsp" %>
  <table>
   
  </table>
</body>
</html>