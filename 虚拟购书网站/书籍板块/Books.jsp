<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Í¼Êé²éÑ¯ÒýÇæ</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>
       <%@include file="/Main.jsp" %>
       <%
             String test=request.getParameter("number");
             if(test.equals("null"))
             {
           	  response.sendRedirect("http://localhost:8080/EletronicWeb/LoginModel/Login.jsp");
           	 }
       %>
      <form action="QueryBookinfo.jsp" name="searchform" method="post">
         <input name="number" type="hidden" value=<%=request.getParameter("number")%>>
         <table align="center" class="style1" cellpadding="1">
             <tr align="center" class="style6" bgcolor="gray">
              <td height="30" width="60%" align="center">²éÑ¯¹Ø¼ü×Ö
              </td>
              <td height="30" width="20%" align="center">²éÑ¯ÒÀ¾Ý
              </td>
              <td height="30" width="20%" align="center">²éÑ¯·½Ê½
              </td>
             </tr>
              <tr align="center" class="style3" bgcolor="">
               <td width="100%" height="50">
                 <marquee direction=left onmouseover="this.stop()" onmouseout="this.start()">
                     ÕâÀï¿ÉÒÔ¿ìËÙ²éÑ¯ÏëÊÇ·ñÓÐÏëÒªÂòµÄÊé¼®£¬Ä¬ÈÏ²éÑ¯ÒÀ¾ÝÎª±êÌâ£¬Ä¬ÈÏ²éÑ¯·½Ê½ÎªÄ£ºý²éÑ¯
                 </marquee>
               </td>
              </tr>
              <tr bgcolor="yellow" class="style6" align="center">
                <td height="40" width="60%" align="center" >
                &nbsp;&nbsp;&nbsp;<input type="text" size="25" maxlength="24" name="bookquery">
                </td>
                <td height="40" width="20%" align="center">
                  <select name="way">
                  <option value="1"></option>
                  <option value="1">ÒÀÕÕ±êÌâ²éÑ¯</option>
                  <option value="2">ÒÀÕÕ×÷Õß²éÑ¯</option>
                  <option value="3">ÒÀÕÕISBNºÅ²éÑ¯</option>
                  <option value="4">ÒÀÕÕ³ö°æÉç²éÑ¯</option>
                  </select>
                 </td>
                 <td height="40" width="20%" align="center">
                  <select name="islcear">
                   <option value="2"></option>
                   <option value="1">¾«È·²éÑ¯</option>
                   <option value="2">Ä£ºý²éÑ¯</option>
                  </select>
                 </td>
              </tr>
              <tr>
              <td width="100%" height="50">&nbsp;&nbsp;
              </tr>
              <tr align="center" class="style1">
                 <td width="50%" align="center">
                  <input type="submit" name="Query" value="²éÑ¯">
                 </td>
                 <td width="50%" align="center">
                   <input type="reset" name="Reset" value="ÖØÖÃ">
                 </td>
              </tr>
         </table>
      </form> 
      <%@include file="/rear.jsp" %>
</body>
</html>