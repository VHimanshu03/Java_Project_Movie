<%-- 
    Document   : movie
    Created on : 19 Apr, 2017, 3:41:42 PM
    Author     : himanshu vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String str=(String)session.getAttribute("name");
out.println( "<center><h1>Hi !!!</h1></center> "  + str);
if(str.equals(""))
    response.sendRedirect("index.html");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="movie.css"/>
        <title>JSP Page</title>
    </head>
    <body background="img3.jpg">
    <form action="data.jsp">
        <div id="movie">
            <table><center><text color="blue" size="35"><h2>ENTER MOVIE DETAILS</h2></center><hr>
                <tr><td>Mname</td><td><input type="text" name="mname" placeholder="enter movie name"/></td></tr></br>
                <tr><td>Mid</td><td><input type="text" name="mid" placeholder="enter movieid name"/></td></tr></br>
                <tr><td>release date</td><td><input type="text" name="rdate" placeholder="dd/mm/yy"/></td></tr></br>
                <tr><td>actor</td><td><input type="text" name="actor" placeholder="enter actor name"/></td></tr></br>
                <tr><td><input type="submit" name="submit" value="submit"/>
                        <a href="logout.jsp">LOGOUT</a></td></tr>
             </table></div></form>
    <br><a href="databse.jsp" class="button" name="databse">SEE DATABASE</a>
       </body>
</html>
