<%-- 
    Document   : validate2
    Created on : 19 Apr, 2017, 5:36:32 PM
    Author     : himanshu vaish
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root", "root");
                 Statement st=con.createStatement();
                 String str1=request.getParameter("user");
                 String str2=request.getParameter("email");
                 String str3=request.getParameter("password");
                 String str="insert into user values('"+str1+"','"+str2+"','"+str3+"')";
                 st.executeUpdate(str);
                 response.sendRedirect("user.html");
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>
    