<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Login.BlogManager"%>
<%@page import="java.sql.ResultSet;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>删除预览中</title>
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
<%! String number; %>
<%! String userid; %>
<%! String username; %>
<%! String theme; %>
<%! String article; %>
<%! String pulishtime; %>
<%! String updatetime; %>
<%
              number=request.getParameter("number");
             ResultSet res=blog.getBlognumber(number);
             while(res.next())
             {
                 number=res.getString("number")	;
                 username=res.getString("username");
                 userid=res.getString("userid");
                 theme=res.getString("theme");
                 article=res.getString("article");
                 pulishtime=res.getString("pulishtime");
                 updatetime=res.getString("updatetime");
                 }
              System.out.println(number);
%>
<form action="Delete.jsp" name="form1" method="post" >
   <input type="hidden" name="number" value=<%=number %>>
   <input type="hidden" name="userid" value=<%=userid %>>
   <table cellpadding="0" border="0" width="750" align="center" class="style1">
      <tr>
        <td width="375" align="center">
        用户id 
        </td>
        <td width="375" align="center" valign="top">
        <%=userid %>
        </td>
      </tr>
     <tr>
       <td width="375" align="center">
       用户姓名
       </td>
       <td width="375" align="center" valign="top">
       <%=username %>
       </td>
     </tr>
      <tr>
        <td width="375" align="center">
         文章标题
        </td>
        <td width="375" align="center" valign="top">
        <%=theme%>
        <input type="hidden" name="theme" value<%=theme %>>
        </td>
      </tr>
      <tr>
        <td width="375" align="center">
               文章内容
        </td>
        <td width="375" align="center" valign="top">
        <textarea rows="7" cols="10">
        <%=article %>
        </textarea>
        </td>
      </tr>
      <tr>
        <td width="375" align="center">
        发表时间
        </td>
        <td width="375" align="center" valign="top">
        <%=pulishtime %>
        </td>
      </tr>
      <%
         if(updatetime!=null){
        	 %>
        	 <tr>
        	    <td width="375" align="center">
        	    修改时间
        	    </td>
        	    <td width="375" align="center" valign="top">
        	    <%=updatetime %>
        	    </td>
        	 </tr>
        	 <%
         }
      %>
      <tr>
         <td width="375" align="center">
         <input type="submit" name="Submit" value="确认删除">
         </td>
         
      </tr>
   </table>
   
</form>
<a href="MyBlog.jsp?userid=<%=userid%>">取消</a>
</body>
</html>