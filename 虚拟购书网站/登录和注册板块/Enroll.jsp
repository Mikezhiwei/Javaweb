<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>网站注册</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>
       <table width="90%" align="center" cellpadding="0" cellspacing="0" class="style6">
          <tr bgcolor="pink" align="center" class="style6">
            <td bordercolor="green">
               <marquee onmouseover="this.stop()" onmouseout="this.start()">
                 只需注册您的用户名和密码就是了用户名不能与其他用户名重复，否则失败;若已经注册，则返回
                 <a href="Login.jsp">登录首页</a>
               </marquee>
            </td>
          </tr>
       </table>
    <form action="DealEnroll.jsp" name="enrollfrom" method="post">
          <table width="755" align="center" cellpadding="0" cellspacing="0" class="style6">
            <tr bgcolor="blue" height="90">
              <td width="45%" align="center">&nbsp;&nbsp;用户名：含有中文和英文字符最好
              </td>
              <td width="40%" align="center">
                <input type="text" size="20" maxlength="25" name="username">
              </td>
            </tr>
            <tr bgcolor="purple" height="90">
              <td width="45%" align="center">&nbsp;&nbsp;登录密码
              </td>
              <td width="40%" align="center">
                <input type="password" size="20" maxlength="25" name="password1">
              </td>
           </tr>
            <tr bgcolor="gray" height="90">
              <td width="45%" align="center">&nbsp;&nbsp;再次输入登录密码
              </td>
              <td width="40%" align="center">
                <input type="password" size="20" maxlength="25" name="password2">
              </td>
           </tr>
           <tr bgcolor="yellow" height="40">
              <td width="45%" align="center">
              <input type="submit" name="Enroll" value="注册">
              </td>
              <td width="40%" align="center">
               <input type="reset" name="Reset" value="重置">
              </td>
           </tr>
          </table>
        </form>
</body>
</html>