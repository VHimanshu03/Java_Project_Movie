<%-- 
    Document   : validateuser
    Created on : 19 Apr, 2017, 5:59:14 PM
    Author     : himanshu vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<%
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root", "root");
                 Statement st=con.createStatement();
                 String user = request.getParameter("user");
                 String pwd = request.getParameter("password");
                 String str= "select password from user where user='"+user+"'";
                 ResultSet rs= st.executeQuery(str);
                 String str1="";
                  while(rs.next())
                  {
                 str1= rs.getString(1);
                  }
                  if(pwd.equals(str1))
                  {
                      session.setAttribute("user1", user);
                      response.sendRedirect("moviesearch.jsp");
                  }
                  else
                      response.sendRedirect("wronguser.html");
                  
    }
    
    catch(Exception e)
    {
        out.println(e);
        
      }
                 %>
   
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
