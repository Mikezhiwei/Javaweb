<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DateManger.BookManger"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<jsp:useBean id="book" scope="page" class="DateManger.BookManger"></jsp:useBean>
<body>
       <%@include file="/Main.jsp" %>
    
       <%
             ResultSet res=book.getBookinfo_number(request.getParameter("bnumber"));
             res.next();
             %>
            <form action="/Test.jsp" name="updateform" method="post">   
            <table width="750"align="center" bgcolor="red" class="style1">
            <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">ISBN号
              </td>
              <td width="86%" align="center">
             <input type="text" size="25" maxlength="25" name="isbn" value=<%=res.getString("isbn")%>>
            </tr>
            <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">标题
              </td>
              <td width="86%" align="center">
                <input type="text" size="25" maxlength="25" name="title" value=<%=res.getString("title")%>>
            </tr>
             <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">作者
              </td>
              <td width="86%" align="center">
              <input type="text" size="25" maxlength="25" name="author" value=<%=res.getString("author") %>>
            </tr>
           <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">出版社
              </td>
              <td width="86%" align="center">
              <input type="text" size="25" maxlength="25" name="pulish" value=<%=res.getString("pulish") %>>
            </tr>
           <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">出版时间
              </td>
              <td width="86%" align="center">
              <input type="text" size="25" maxlength="25" name="pulishdate" value=<%=res.getString("pulishdate")%>>
            </tr>
             <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">市场价
              </td>
              <td width="86%" align="center">
              <input type="text" size="25" maxlength="25" name="price" value=<%=res.getString("price")%>>
            </tr>
           <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">增加库存
              </td>
              <td width="86%" align="center">
              <input type="text" size="25" maxlength="25" name="leavenumber">
            </tr>
             <tr bgcolor="#CCFF22" align="center">
              <td width="14%" height="30"  align="center">卖家推荐评价
              </td>
              <td width="86%" align="center">
              <input type="text" size="25" maxlength="25" name="comment" value=<%=res.getString("comment")%>>
            </tr>
             <tr bgcolor="gray" align="center" height="20">
              <td width="50%">
               <input type="submit" value="修改" name="Update">
              </td>
              <td width="50%">
               <input type="reset" value="重置" name="Reset">
              </td>
             </tr>
           </table>
          </form>
             <%
              book.close();
       %>
            <%@include file="/rear.jsp" %>   
</body>
</html>