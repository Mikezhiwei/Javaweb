<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="DateManger.LoginInfo"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>×¢²áÖÐ</title>
</head>
<body>

<jsp:useBean id="login" class="DateManger.LoginInfo"></jsp:useBean> 
<jsp:useBean id="enroll" class="DateManger.LoginManger"></jsp:useBean>
 <%
            login.setUserid(enroll.ChangeCoding(request.getParameter("username")));
            login.setPassword(enroll.ChangeCoding(request.getParameter("password1")));
            login.setPassword2(enroll.ChangeCoding(request.getParameter("password2")));
            if(login.isSamePassword())
            {
            	  int count=enroll.insertLogin(login.getUserid(),login.getPassword());
           	   if(count!=0)
           	   {
            	    %>
            	    <font>×¢²á³É¹¦£¬³¢ÊÔ<a href="Login.jsp">µÇÂ¼</a>ÏÂ°É</font>
            	    <%
           	   }else{
           		    %>
           		    <font>Ãû×ÖÓëÓë´æÔÚÃû×ÖÖØ¸´£¬ÇëÖØÐÂ<a href="Enroll.jsp">×¢²á</a></font>
           		    <% 
           		}
            }else{
                 %>
                 <font>ÃÜÂë²»Ò»ÖÂ£¬ÇëÖØÐÂ<a href="Enroll.jsp">×¢²á</a></font>
                 <% 
            }
 %>

</body>
</html>