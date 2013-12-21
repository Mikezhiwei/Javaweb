<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改中</title>
</head>
<body>
<jsp:useBean id="update" scope="page" class="Login.LoginManager"></jsp:useBean>
<%
            String userid=request.getParameter("userid");
            String password=request.getParameter("password");
            int i=0;
            i=update.updateId(userid,password);
            if(i!=0)
            {
            	%>
            	<font size="3" color="blue">修改成功</font>
            	<a href="AfterLogin.jsp?userid=<%=userid %>">返回</a>
            	<%
            }else{
            	%>
            	<font size="3" color="red">修改失败</font>
            	<a href="AfterLogin.jsp?userid=<%=userid %>">返回</a>
            	<% 
            }
%>
</body>
</html>