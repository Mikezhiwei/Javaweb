<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>图书查询引擎</title>
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
              <td height="30" width="60%" align="center">查询关键字
              </td>
              <td height="30" width="20%" align="center">查询依据
              </td>
              <td height="30" width="20%" align="center">查询方式
              </td>
             </tr>
              <tr align="center" class="style3" bgcolor="">
               <td width="100%" height="50">
                 <marquee direction=left onmouseover="this.stop()" onmouseout="this.start()">
                     这里可以快速查询想是否有想要买的书籍，默认查询依据为标题，默认查询方式为模糊查询
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
                  <option value="1">依照标题查询</option>
                  <option value="2">依照作者查询</option>
                  <option value="3">依照ISBN号查询</option>
                  <option value="4">依照出版社查询</option>
                  </select>
                 </td>
                 <td height="40" width="20%" align="center">
                  <select name="islcear">
                   <option value="2"></option>
                   <option value="1">精确查询</option>
                   <option value="2">模糊查询</option>
                  </select>
                 </td>
              </tr>
              <tr>
              <td width="100%" height="50">&nbsp;&nbsp;
              </tr>
              <tr align="center" class="style1">
                 <td width="50%" align="center">
                  <input type="submit" name="Query" value="查询">
                 </td>
                 <td width="50%" align="center">
                   <input type="reset" name="Reset" value="重置">
                 </td>
              </tr>
         </table>
      </form> 
      <%@include file="/rear.jsp" %>
</body>
</html>