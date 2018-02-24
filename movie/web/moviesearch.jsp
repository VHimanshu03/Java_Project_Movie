<%-- 
    Document   : moviesearch
    Created on : 19 Apr, 2017, 6:04:47 PM
    Author     : himanshu vaish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String str14=(String)session.getAttribute("user1");
out.println( "hi"  + str14);
if(str14.equals(""))
    response.sendRedirect("index.html");
%>
<%

//session.getAttribute("user1");
//String str= (String)session.getAttribute("user1");
//out.println(str);

%>
<body>
    <form action="result.jsp" >
        <table><tr><td>Enter Movie name</td><td><input type="text" name="name" /></td></tr></br>
            <tr><td><input type="submit" name="submit" value="search"/></td></tr></table>
    </form>
</body></br>
<a href="logout2.jsp">LOGOUT</a>