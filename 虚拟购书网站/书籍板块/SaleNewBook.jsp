<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DateManger.BookManger"%>
<%@page import="DateManger.BookInfo"%>
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ÐÂÊé·¢²¼Ê×Ò³</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<jsp:useBean id="salebookman" class="DateManger.BookManger" scope="page"></jsp:useBean>
<jsp:useBean id="bookinfo" class="DateManger.BookInfo" scope="page"></jsp:useBean>
    <%
          String test=request.getParameter("number");
          if(!test.equals("null"))
          {
        	 bookinfo.setSaleid(bookinfo.ChangedFromString(request.getParameter("number")));
             //bookinfo.setSaleid(4); 
             ResultSet res=salebookman.getBookinfo_salerid(bookinfo.getSaleid());
              res.next();
             bookinfo.setSalepeoplename(res.getString("salepeoplename"));
             salebookman.close();
          }else{
        	  response.sendRedirect("http://localhost:8080/EletronicWeb/LoginModel/Login.jsp");
          }
       
    %>
<body>
    <%@include file="/Main.jsp" %>
       <table cellpadding="0" border="0" width="755" align="center" class="style1">
           <tr align="center" class="style6" bgcolor="gray" height="40">
              <td width="30%" align="center">ÓÃ»§Ãû
              </td>
              <td width="70%" align="center"><%=bookinfo.getSalepeoplename() %> 
              </td>
           </tr>
       </table>
       <table cellpadding="0" border="0" width="755" align="center" class="style1">
           <tr align="center" height="50" bgcolor="pink">
              <td width="100%">
                <marquee direction=left onmouseover="this.stop()" onmouseout="this.start()">
                    ²é¿´ÎÒÒÑ¾­ÉÏ´«µÄÊé¼®
                    <a href="MyOwnSaledBooks.jsp?number=<%=request.getParameter("number") %>">Á¬½Ó</a>
                </marquee>
              </td>
           </tr>
       </table>
     <form action="NewBookBorn.jsp" name="form1" method="post">
        <input type="hidden" name="saleid" value=<%=bookinfo.getSaleid() %>>
        <input type="hidden" name="salename" value=<%=bookinfo.getSalepeoplename() %>>   
        <table border="0" align="center"  width="755" cellpadding="0" cellspacing="1" class="style1" bgcolor="gray">
          <tr>
            <td width="30%" height="30" bgcolor="#CCFF22" align="center">isbnºÅ(ÇëÊäÈëÕýÈ·µÄISBNºÅ)
            </td>
            <td width="70%" height="30" bgcolor="#CCFF22" align="center" bordercolor="brown">
             <input type="text" size="25" maxlength="25" name="isbn">
           </td>
          </tr>
          <tr>
            <td width="30%" height="30" bgcolor="#CCFF22" align="center">±êÌâ
            </td>
            <td width="70%" height="30" bgcolor="#CCFF22" align="center" bordercolor="brown">
             <input type="text" size="25" maxlength="25" name="title">
           </td>
          </tr>
           <tr>
            <td width="30%" height="30" bgcolor="#CCFF22" align="center">×÷Õß
            </td>
            <td width="70%" height="30" bgcolor="#CCFF22" align="center" bordercolor="brown">
             <input type="text" size="25" maxlength="25" name="author">
           </td>
          </tr>
           <tr>
            <td width="30%" height="30" bgcolor="#CCFF22" align="center">³ö°æÉç
            </td>
            <td width="70%" height="30" bgcolor="#CCFF22" align="center" bordercolor="brown">
             <input type="text" size="25" maxlength="25" name="pulish">
           </td>
          </tr>
           <tr>
            <td width="30%" height="30" bgcolor="#CCFF22" align="center">³ö°æÊ±¼ä
            </td>
            <td width="70%" height="30" bgcolor="#CCFF22" align="center" bordercolor="brown">
             <input type="text" size="25" maxlength="25" name="pulishdate" >
           </td>
          </tr>
           <tr>
            <td width="30%" height="30" bgcolor="#CCFF22" align="center">ÊÐ³¡¼Û(ÇëÊäÈëÊý×Ö)
            </td>
            <td width="70%" height="30" bgcolor="#CCFF22" align="center" bordercolor="brown">
             <input type="text" size="25" maxlength="25" name="price">
           </td>
          </tr>
          <tr>
            <td width="30%" height="30" bgcolor="#CCFF22" align="center">ÉÏ´«ÊýÁ¿£¨ÇëÊäÈëÕûÊý)
            </td>
            <td width="70%" height="30" bgcolor="#CCFF22" align="center" bordercolor="brown">
             <input type="text" size="25" maxlength="25" name="tatolnumber">
           </td>
          </tr>
          <tr>
            <td width="30%" height="30" bgcolor="#CCFF22" align="center" >Âô¼ÒÆÀ¼Û
            </td>
            <td width="70%" height="30" bgcolor="#CCFF22" align="center" bordercolor="brown">
             <input type="text" size="25" maxlength="25" name="comment">
           </td>
          </tr>
          <tr>
            <td width="50" height="30" bgcolor="#FFFFFF" align="center">
            <input type="submit" value="ÉÏ´«" name="Submit">
            </td>
            <td width="50" height="30" bgcolor="#FFFFFFF" align="center" >
            <input type="reset" value="È¡Ïû" name="Reset">
            </td>
          </tr>
        </table>
       </form>
    <%@include file="/rear.jsp" %>
</body>
</html>