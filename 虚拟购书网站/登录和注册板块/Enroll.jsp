<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ÍøÕ¾×¢²á</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>
       <table width="90%" align="center" cellpadding="0" cellspacing="0" class="style6">
          <tr bgcolor="pink" align="center" class="style6">
            <td bordercolor="green">
               <marquee onmouseover="this.stop()" onmouseout="this.start()">
                 Ö»Ðè×¢²áÄúµÄÓÃ»§ÃûºÍÃÜÂë¾ÍÊÇÁËÓÃ»§Ãû²»ÄÜÓëÆäËûÓÃ»§ÃûÖØ¸´£¬·ñÔòÊ§°Ü;ÈôÒÑ¾­×¢²á£¬Ôò·µ»Ø
                 <a href="Login.jsp">µÇÂ¼Ê×Ò³</a>
               </marquee>
            </td>
          </tr>
       </table>
    <form action="DealEnroll.jsp" name="enrollfrom" method="post">
          <table width="755" align="center" cellpadding="0" cellspacing="0" class="style6">
            <tr bgcolor="blue" height="90">
              <td width="45%" align="center">&nbsp;&nbsp;ÓÃ»§Ãû£ºº¬ÓÐÖÐÎÄºÍÓ¢ÎÄ×Ö·û×îºÃ
              </td>
              <td width="40%" align="center">
                <input type="text" size="20" maxlength="25" name="username">
              </td>
            </tr>
            <tr bgcolor="purple" height="90">
              <td width="45%" align="center">&nbsp;&nbsp;µÇÂ¼ÃÜÂë
              </td>
              <td width="40%" align="center">
                <input type="password" size="20" maxlength="25" name="password1">
              </td>
           </tr>
            <tr bgcolor="gray" height="90">
              <td width="45%" align="center">&nbsp;&nbsp;ÔÙ´ÎÊäÈëµÇÂ¼ÃÜÂë
              </td>
              <td width="40%" align="center">
                <input type="password" size="20" maxlength="25" name="password2">
              </td>
           </tr>
           <tr bgcolor="yellow" height="40">
              <td width="45%" align="center">
              <input type="submit" name="Enroll" value="×¢²á">
              </td>
              <td width="40%" align="center">
               <input type="reset" name="Reset" value="ÖØÖÃ">
              </td>
           </tr>
          </table>
        </form>
</body>
</html>