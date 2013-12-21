<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>已经发表的微博</title>
</head>
<body>
<jsp:useBean id="blog" scope="page" class="Login.BlogManager"></jsp:useBean>
<form action="" name="form1" method="post">
<%! String number; %>
<%! String userid; %>
<%! String username; %>
<%! String theme; %>
<%! String article; %>
<%! String pulishtime; %>
<%! String updatetime; %>
<%
        
         ResultSet res=blog.getBlognumber(request.getParameter("number"));
            //ResultSet res=blog.getBlognumber("7");
           if(res!=null)
           {
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
           }else{
        	   %>
        	   <font size="3" color="blue">查询失败</font>
        	   <% 
        	   
           }
           blog.close();
%>
<input type="hidden" value<%=number%> name="number">
<table cellpadding="0" border="0" bgcolor="#CCFFF20" align="center" width="750">

        <tr>
          <td width="375" align="right">
           用户id
          </td>
          <td width="375" align="center">
          <%=userid %>
          <input type="hidden" name="userid" value=<%=userid%> size="30" maxlength="30">
          </td>
       </tr>
       <tr>
          <td width="375" align="right">
           用户姓名
          </td>
          <td width="375" align="center">
          <%=username %>
          <input type="hidden" name="username" value=<%=username%> size="30" maxlength="30">
          </td>
       </tr>
       <tr>
          <td width="375" align="right">
           文章标题
          </td>
          <td width="375" align="center">
          <%=theme %>
          <input type="text" name="theme" value=<%=theme%> size="30" maxlength="30">
          </td>
       </tr>
        <tr>
           <td width="375" align="right">
                     文章内容
           </td>
           <td width="375" align="center">
           <textarea rows="7" cols="10" name="article">
           <%=article %>
           </textarea>
           </td>
        </tr>
       <tr>
          <td width="375" align="right">
           发表时间
          </td>
          <td width="375" align="center">
          <%=pulishtime%>
          <input type="hidden" value<%=pulishtime%> name="pulishtime" size="30" maxlength="30">
          </td>
       </tr>
       <%
         if(updatetime!=null)
         {
        	 %>
        	 <tr>
        	   <td>修改时间
        	   </td>
        	   <td>
        	   <%=updatetime %>
        	   </td>
        	 </tr>
        	 <%
         }
       %>
        </table>
</form>
<a href="MyBlog.jsp?userid=<%=userid%>">返回</a>
</body>
</html>