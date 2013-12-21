<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>在线登录系统</title>
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
<center>
<font color="purple" size="6">
JSP在线博客系统
</font>
</center>
<p>
<form action="isLogin.jsp" name="form1" class="style1" method="post"> 
   <table border="0" cellpadding="0" class="style1" width="750" bgcolor="#CCCCCC" align="center">
      <tr>
         <td width="375" align="right">用户帐号
         </td>
         <td width="375" align="center" valign="top">
         <input type="text" size="20" maxlength="20" name="userid">
         </td>
      </tr>
      <tr>   
         <td width="375" align="right">密码
         </td>
         <td width="375" align="center" valign="top">
         <input type="password" size="20" maxlength="20" name="password">
         </td>
      </tr>
      <tr>
        <td width="375" align="center" >
        选择身份
        </td>
        <td width="375" align="center" valign="top">
        <select name="right">
        <option value="novalue"></option>
        <option value="1">普通用户</option>
        <option value="2">管理人员</option>
        </select>
        </td>
      </tr>
      <tr>
         <td width="375" align="center" valign="top">
         <input type="submit" name="Submit" value="登录">
         </td>
         <td width="375" align="center" valign="top">
         <input type="reset" name="Reset" value="重置">
         </td>
      </tr>
      <tr>
      <font size="3" color="red">如果你不是该网站的用户的话,请点击这里先进行<a href="Enroll.jsp">注册</a> </font>
      </tr>
  </table>
</form>

</body>
</html>