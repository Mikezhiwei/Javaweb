<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>µÇÂ¼Ê×Ò³</title>
<link  href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>
      <table align="center" cellpadding="0" cellspacing="0" width="100%" class="style2">
           <tr align="center" bgcolor="blue" class="style6">
               <td bgcolor="pink">
                <marquee direction=left onmouseover="this.stop()" onmouseout="this.start()">
                  µÇÂ¼Ò³Ãæ£ºÇëÊäÈëÕÊºÅºÍÃÜÂë,Èô»¹²»ÊÇ±¾ÍøÕ¾ÓÃ»§
                  <a href="Enroll.jsp">½øÐÐ×¢²á</a>
                </marquee>
               </td>
           </tr>
      </table>
     <form action="isLogin.jsp" name="fomr1" method="post">
      <table align="center" cellpadding="0" cellspacing="0" width="755" class="style1" bgcolor="">
         <tr bgcolor="brown" height="100">
            <td width="350" align="center">
              &nbsp;ÕÊºÅ
            </td>
            <td width="405" align="left">
             <input type="text" name="username" size="20" maxlength="20">
            </td>
         </tr>
         <tr bgcolor="purple" height="100">
             <td width="350" align="center">
             &nbsp;ÃÜÂë
            </td>
            <td width="405" align="left">
             <input type="password" name="password" size="20" maxlength="20">
            </td>
         </tr>
         <tr bgcolor="orange" height="50">
           <td width="375" align="center">
               <input type="submit" name="Submit" value="µÇÂ¼">
           </td>
           <td width="375" align="center">
             <input type="reset" name="Cancel" value="ÖØÖÃ">
           </td>
         </tr>
       </table>
      </form>
      <div align="center">
        <a href="http://localhost:8080/EletronicWeb/index.jsp">·µ»Ø¹ÙÍøÊ×Ò³</a>
      </div> 
</body>
</html>