<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DateManger.BookInfo"%>
<%@page import="DateManger.BookManger"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>·¢²¼ÖÐ</title>
</head>
<body>
<jsp:useBean id="bookinfo" scope="page" class="DateManger.BookInfo"></jsp:useBean>
<jsp:useBean id="book" scope="page" class="DateManger.BookManger"></jsp:useBean>
  <%
             bookinfo.setIsbn(book.ChangeCoding(request.getParameter("isbn")));
             bookinfo.setAuthor(book.ChangeCoding(request.getParameter("author")));
             bookinfo.setPrice(bookinfo.ChangeFromStringD(request.getParameter("price")));
             bookinfo.setPulish(book.ChangeCoding(request.getParameter("pulish")));
             bookinfo.setTitle(book.ChangeCoding(request.getParameter("title")));
             bookinfo.setPulishdate(book.ChangeCoding(request.getParameter("pulishdate")));
             bookinfo.setTotalNumber(bookinfo.ChangedFromString(request.getParameter("tatolnumber")));
             bookinfo.setLeaveNumber(bookinfo.ChangedFromString(bookinfo.getTotalNumber()));
             bookinfo.setComment(book.ChangeCoding(request.getParameter("comment")));
             
             bookinfo.setSaleid(book.ChangeFromString(request.getParameter("saleid")));
             bookinfo.setSalepeoplename(book.ChangeCoding(request.getParameter("salename")));
             
             int counter=book.insertBook(bookinfo.getIsbn(),bookinfo.getTitle(),bookinfo.getAuthor(),bookinfo.getPulish(),bookinfo.getPulishdate(),bookinfo.getPrice(),bookinfo.getTotalNumber(),bookinfo.getLeaveNumber(),bookinfo.getComment(),bookinfo.getSalepeoplename(),bookinfo.getSaleid());     
             if(counter==0)
             {
            	   %>
            	   <font size="3" color="red">ÐÂÊé·¢²¼Ê§°Ü Çë</font><a href="SaleNewBook.jsp?number=<%=bookinfo.ChangedFromInt(bookinfo.getSaleid()) %>">·µ»Ø</a>
            	   <% 
             }else{
            	  %>
            	  <font size="3" color="blue">ÐÂÊé·¢²¼³É¹¦</font> Çë<a href="SaleNewBook.jsp?number=<%=bookinfo.ChangedFromInt(bookinfo.getSaleid()) %>">·µ»Ø</a>
            	  <% 
             }
  %>   
</body>
</html>