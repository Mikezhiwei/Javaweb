<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Login.LoginManager"%>
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改登录信息一览</title>
<style type="text/css">
  <!--
      .style1{
       font-size:"12px";
       color:#000000;
      }
      body{
      background-color:#FFFFCC;
      }
      -->
 </style>
</head>
<body>
<jsp:useBean id="login" scope="page" class="Login.LoginManager"></jsp:useBean>
<form action="UpdateLogin_2.jsp" method="post" class="style1" name="form1">
  <table cellpadding="0" border="0" width="750" class="style1" bgcolor="#CCFF22">
        <tr>
          <td width="375" align="right">登录帐号
          </td>
          <td width="375" align="center" valign="top">
         <%=request.getParameter("userid") %>
          <input type="hidden" size="20" maxlength="20" name="userid" value=<%=request.getParameter("userid") %>>
          </td>
        </tr>
        <tr>
           <td width="375" align="right">修改密码
           </td>
           <td width="375" align="center" valign="top">
           <input type="password" size="20" maxlength="20" name="password" >
           </td>
        </tr>
       <tr>
          <td width="375" align="center" valign="top">
          <input type="submit" name="Submit" value="修改">
          </td>
          <td width="375" align="center" valign="top">
          <input type="reset" name="Reset" value="重置">
          </td>
       </tr>
  </table>
</form>
</body>
</html>