<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改博客一览</title>
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
<jsp:useBean id="blog" scope="page" class="Login.BlogManager"></jsp:useBean>
<div>
<form action="" name="fomr1" method="post" >
<%! String number; %>
<%! String userid; %>
<%! String username; %>
<%! String theme; %>
<%! String article; %>
<%! String pulishtime; %>
<%! String updatetime; %>
    <%
             ResultSet res=blog.getBlognumber(request.getParameter("number"));
             while(res.next())
             {
            	   number=res.getString("number");
            	   userid=res.getString("userid");
            	   username=res.getString("username");
            	   theme=res.getString("theme");
            	   article=res.getString("article");
            	   pulishtime=res.getString("pulishtime");
            	   updatetime=res.getString("updatetime");
             }
             blog.close();
             
    %>
    <input type="hidden" name="number" value=<%=number %>>
    <input type="hidden" name="userid" value<%=userid %>>
    <input type="hidden" name="username" value=<%=username %> >>
    <input type="hidden" name="pulishtime" value<%=pulishtime %>>
    <table cellpadding="0" border="0" width="750" align="center" class="style1" bgcolor="#CCFFF20">
        <tr class="style1">
          <td width="375" align="center">
           用户名
           </td>
          <td width="375" align="center" valign="top">
          <%=username %>
          </td>
        </tr>
        <tr class="style1">
          <td width="375" align="center">
          用户id
           </td>
          <td width="375" align="center" valign="top">
          <%=userid %>
          </td>
        </tr>
        <tr class="style1">
          <td width="375" align="center">
           文章标题
           </td>
          <td width="375" align="center" valign="top">
           <input type="text" name="theme" value=<%=theme %>>
          </td>
        </tr>
        <tr class="style1">
          <td width="375" align="center">
                   文章内容
           </td>
          <td width="375" align="center" valign="top">
          <textarea rows="7" cols="10" name="article">
          </textarea>
          </td>
        </tr>
        <tr class="style1">
          <td width="375" align="center">
           发表时间
           </td>
          <td width="375" align="center" valign="top">
          <%=pulishtime %>
          </td>
        </tr>
     </table>
</form>
</div>
</body>
</html>