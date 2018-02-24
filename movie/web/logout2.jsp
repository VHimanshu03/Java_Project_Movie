<%-- 
    Document   : logout
    Created on : 19 Apr, 2017, 4:33:27 PM
    Author     : himanshu vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% session.setAttribute("user1","");
response.sendRedirect("index.html");
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
