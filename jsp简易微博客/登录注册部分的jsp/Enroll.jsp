<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jsp登录系统注册</title>
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
<font size="6" color="blue">欢迎进行jsp登录系统的注册</font>
<jsp:useBean id="counter" scope="page" class="Login.LoginManager"></jsp:useBean>
</center>
<%! String userid; %>
<%! int maxid; %>
<%
           maxid=counter.getMaxid();
           maxid++;
           userid=maxid+"";
%>
<form action="Enroll_2.jsp" name="form1" method="post">
      <table cellpadding="0" border="0" class="style1" width="750" align="center" bgcolor="#CCFF22">
        <tr>
           <td width="375" align="right">姓名
           </td>
           <td width="375" align="center">
           <input type="text" size="20" maxlength="20" name="name">
           </td>
        </tr>
         <tr>
           <td width="375" align="right">登录号码
           </td>
           <td width="375" align="center">
           <%=userid %>
           <input type="hidden" size="20" maxlength="20" name="userid" value=<%=userid %>>
           </td>
        </tr>
        <tr>
           <td width="375" align="right">密码
           </td>
           <td width="375" align="center">
           <input type="password" size="20" maxlength="20" name="password" >
           </td>
        </tr>
         <tr>
           <td width="375" align="right">性别
           </td>
           <td width="375" align="center">
           <input type="text" size="20" maxlength="2" name="sex" >
           </td>
        </tr>
         <tr>
           <td width="375" align="right">年龄
           </td>
           <td width="375" align="center">
           <input type="text" size="20" maxlength="5" name="age" >
           </td>
        </tr>
         <tr>
           <td width="375" align="right">职业
           </td>
           <td width="375" align="center">
           <input type="text" size="20" maxlength="20" name="job">
           </td>
        </tr>
         <tr>
           <td width="375" align="right">电话号码
           </td>
           <td width="375" align="center">
           <input type="text" size="20" maxlength="15" name="phone">
           </td>
        </tr>
         <tr>
           <td width="375" align="right">具体住址
           </td>
           <td width="375" align="center">
           <input type="text" size="20" maxlength="20" name="address">
           </td>
        </tr>
        <tr>
          <td width="350" align="center">
           选择注册身份
          </td>
          <td width="400" align="center" valign="top">
          <select name="right">
          <option value="novalue"></option>
          <option value="1">普通用户</option>
          <option value="2">管理人员</option>
          </select>
          </td>
        </tr>
        <tr>
          <td width="375" align="center">
          <input type="submit" value="提交" name="Submit">
          </td>
          <td>
          <input type="reset" value="重置" name="Reset">
          </td>
        </tr>
        </table>
</form>
</body>
</html>