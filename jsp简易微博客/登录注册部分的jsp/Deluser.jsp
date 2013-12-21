<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>删除用户一览</title>
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
<%! String userid; %>
<%! String username; %>
<%! String sex; %>
<%! String age; %>
<%! String address; %>
<%! String job; %>
<%! String phone; %>
<jsp:useBean id="user" scope="page" class="Login.UserManger"></jsp:useBean>
<center>
     <form action="Deluser_2.jsp" name="form1" method="post" class="style1">
        <%
            ResultSet res=user.userinfo(request.getParameter("userid"));
            while(res.next())
            {
            	userid=res.getString("id");
                username=res.getString("name");
            	age=res.getString("age");
                sex=res.getString("sex");
                address=res.getString("address");
                job=res.getString("jod");
                phone=res.getString("phone");
            }
            
        %>
        <input type="hidden" name="userid" value=<%=userid %>>
        <table cellpadding="0" border="0" align="center" bgcolor="#FFCCCC" width="750">
              <tr>
                 <td width="375" align="center">姓名
                 </td>
                 <td width="375" align="center" valign="top">
                 <%=username %>
                 </td>
              </tr>
               <tr>
                 <td width="375" align="center">用户id
                 </td>
                 <td width="375" align="center" valign="top">
                 <%=userid %>
                  </td>
              </tr> 
               <tr>
                 <td width="375" align="center">
                 </td>
                 <td width="375" align="center" valign="top">
                 </td>
              </tr> 
               <tr>
                 <td width="375" align="center">性别
                 </td>
                 <td width="375" align="center" valign="top">
                 <%=sex %>
                 </td>
              </tr> 
               <tr>
                 <td width="375" align="center">年龄
                 </td>
                 <td width="375" align="center" valign="top">
                 <%=age %>
                 </td>
              </tr>
               <tr>
                 <td width="375" align="center">地址
                 </td>
                 <td width="375" align="center" valign="top">
                 <%=address %>
                 </td>
              </tr>  
               <tr>
                 <td width="375" align="center">电话
                 </td>
                 <td width="375" align="center" valign="top">
                 <%=phone %>
                 </td>
              </tr>          
        </table>
        <input type="submit" name="Submit" value="确认删除本用户">
     </form>
     <a href="Manger.jsp">取消</a>
</center>
</body>
</html>