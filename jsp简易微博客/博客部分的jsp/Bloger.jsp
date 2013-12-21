<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>个人微博主页</title>
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
<jsp:useBean id="user" scope="page" class="Login.UserManger"></jsp:useBean>
<%! String userid; %>
<%! String username; %>
<%
         userid=request.getParameter("userid");
           //userid="1";
          // username="lzw";
         ResultSet res=user.userinfo(userid);
        if(res!=null)
        { 	
           while(res.next())
         {
        	 username=res.getString("name");
         }
        }
         
%>
    <div align="left">
     <font size="2" color="blue">微博</font>
     <font size="2" color="blue">用户id&nbsp;<%=userid %></font>
     <font size="2" color="red">用户名称&nbsp;<%=username %></font>
    </div>  
    <p>
    <br>
    <div align="center">
     <form action="AddBlog.jsp" name="form1" method="post">
         <input type="hidden"name="userid" value=<%=userid %>>
         <input type="hidden" name="username" value=<%=username%>>
     <table width="750" class="style1" cellpadding="0" border="0">
       <tr>
         <td width="300" align="right">
          标题
         </td>
         <td width="450" align="center" valign="top">
          <input type="text" size="10" maxlength="20" name="theme">
         </td>
      </tr> 
        <tr>
           <td width="300" align="right">
                      内容
           </td>
           <td width="450" align="center" valign="top">
           <textarea rows="7" cols="10"name="article"></textarea>
           </td>
        </tr> 
        <tr>
           <td width="375" align="center">
           <input type="submit" value="发表" name="Submit">
           </td>
           <td width="375" align="center">
           <input type="reset" value="重置" name="Reset">
           </td>
        </tr>  
      </table>
    </form>
    </div>
</body>
</html>