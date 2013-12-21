<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改信息一览</title>
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
<jsp:useBean id="userinfo" scope="page" class="Login.UserManger"></jsp:useBean>
<%!String userid; %>
<%!ResultSet res; %>
<%
            res=null;
            userid=request.getParameter("userid");
            res=userinfo.userinfo(userid);
            while(res.next()){//***************************//
            %>
  <form action="UpdateUserInfo_2.jsp" name="form1" method="post" class="style1">
<table cellpadding="0" border="0" width="750" class="style1" align="center" bgcolor="#CCFF22" >
    <tr>
        <td width="375" align="right">姓名
        </td>
        <td width="375" align="center" valign="top">
        <input type="text" size="20" maxlength="20" name="username" value=<%=res.getString("name") %>>
        </td>
    </tr>
    <tr>
       <td width="375" align="right">登录帐号 
       </td>
       <td width="375" align="center" valign="top">
        <%=res.getString("id") %>
        <input type="hidden" size="20" maxlength="20" name="userid" value=<%=res.getString("id") %>> 
       </td>
    </tr>   
    <tr>
       <td width="375" align="right">性别
       </td>
       <td width="375" align="center" valign="top">
       <input type="text" size="20" maxlength="20" name="sex" value=<%=res.getString("sex") %>>
       </td>
    </tr>
    <tr>
        <td width=375" align="right">年龄
        </td>
        <td width="375" align="center" valign="top">
        <input type="text" size="20" maxlength="20" name="age" value=<%=res.getString("age") %>>
        </td>
    </tr>
    <tr>
       <td width="375" align="right">职业
       </td>
       <td width="375" align="center" valign="top">
       <input type="text" size="20" maxlength="20" name="job" value=<%=res.getString("jod") %>>
       </td>
    </tr>
    <tr>
        <td width="375" align="right">住址
        </td>
        <td width="375" align="center" valign="top">
        <input type="text" size="20" maxlength="20" name="address" value=<%=res.getString("address") %>>
        </td>
    </tr>
    <tr>
        <td width="375" align="right">电话
        </td>
        <td width="375" align="center" valign="top">
        <input type="text" size="20" maxlength="20" name="phone" value=<%=res.getString("phone") %>>
        </td>
    </tr>
    <tr>
        <td width="375" align="center" valign="top">
        <input type="submit" value="提交" name="Submit">
        </td>
        <td width="375" align="center" valign="top">
        <input type="reset" value="重置" name="Reset">
        </td>
    </tr>
</table>
</form>
  <% 
     }
%>
</body>
</html>