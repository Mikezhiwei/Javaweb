<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.ResultSet"%>
<%@page import="DateManger.BookInfo"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>查询结果</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<jsp:useBean id="book" class="DateManger.BookInfo"></jsp:useBean>
<jsp:useBean id="bookinfo" class="DateManger.BookManger"></jsp:useBean>
<body>
    <%@include file="/Main.jsp" %>
    <table cellpadding="1" border="0" class="style6" align="center" bgcolor="#FFFFFF" width="757">
      <tr align="center" bgcolor="gray" class="style6">
        <td height="30">标题
         </td>
         <td height="30">作者
         </td>
         <td height="30">出版社
         </td>
         <td height="30">价格
         </td>
         <td height="30">余量
         </td>
         <td height="30">详情
         </td>
         <td height="30">购买
         </td>
      </tr>
     <%     
            ResultSet res=null;
            book.setQueryStr(bookinfo.ChangeCoding(request.getParameter("bookquery")));
            book.setQway(book.ChangedFromString(request.getParameter("way")));
            book.setIsclear(book.ChangedFromString(request.getParameter("islcear")));
            book.setSaleid(book.ChangedFromString(request.getParameter("number")));
            if(book.getIsclear()==1)
            {
            	   if(book.getQway()==1)
            	   {
            		    res=bookinfo.getBookinfo_title(book.getQureystr());
            	   }else if(book.getQway()==2){
            		    res=bookinfo.getBookinfo_autohr(book.getQureystr());
            	   }else if(book.getQway()==3){
            		   res=bookinfo.getBookinfo(book.getQureystr());
            	   }else {
            		   res=bookinfo.getBookinfo_pulish(book.getQureystr());
            	   }
            }else{
            	  if(book.getQway()==1)
            	  {
            		  res=bookinfo.getBookinfo_unclearT(book.getQureystr());
            	  }else if(book.getQway()==2){
            		  res=bookinfo.getBookinfo_unclearA(book.getQureystr());
            	  }else if(book.getQway()==3){
            		  res=bookinfo.getBookinfo_unclearI(book.getQureystr());
            	  }else{
            		  res=bookinfo.getBookinfo_unclearP(book.getQureystr());
            	  }
            }
           while(res.next())
           {
        	       %>
        	       <tr bgcolor="pink" align="center" class="style1">
        	          <td height="40"><%=res.getString("title") %>
        	          </td>
        	          <td height="40"><%=res.getString("author") %>
        	          </td>
        	          <td height="40"><%=res.getString("pulish") %>
        	          </td>
        	          <td  height="40"><%=res.getString("price") %>
        	          </td>
        	          <td height="40"><%=res.getString("leavenumber") %>
        	          </td>
        	          <td height="40"><a href="BookDetail.jsp?bnumber=<%=res.getObject(1)%>">详情</a>
        	          </td>
        	          <td height="40"><a href="">购买</a>
        	          </td>
        	       </tr> 
        	       <% 
           }
             bookinfo.close();
          %>
         </table>
         <div align="center">
         <font size="3">返回继续<a href="Books.jsp?number=<%=book.getSaleid()+""%>"><font color="blue" size="3"></font>查询</a></font>
         </div>
         <%@include file="/rear.jsp" %>
</body>
</html>