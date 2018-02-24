<%--
    Document   : data
    Created on : 19 Apr, 2017, 3:53:32 PM
    Author     : himanshu vaish
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%
    String str5=(String)session.getAttribute("name");
    if(str5.equals(""))
    response.sendRedirect("index.html");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root", "root");
                 Statement st=con.createStatement();
                 String str1=request.getParameter("mname");
                 String str2=request.getParameter("mid");
                 String str3=request.getParameter("rdate");
                 String str4=request.getParameter("actor");
                 String str="insert into movie values('"+str1+"','"+str2+"','"+str3+"','"+str4+"')";
                 st.executeUpdate(str);
                 out.println("<center><h1>insertion successfull Do Another Insertion</h1></center>");
    
    }
    
              catch(Exception e)
{
    out.println(e);
}   
    %>
    <style>
    .button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
     margin-bottom: 500px;
    margin-left: 600px;
    margin-right: 500px;
    margin-top: 100px;
}
    </style>
    <br><a href="movie.jsp" class="button">GO TO HOME</a>
   