<%-- 
    Document   : result
    Created on : 19 Apr, 2017, 6:17:12 PM
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
                 String str1=request.getParameter("name");
                 String str2= "select * from movie where mname='"+str1+"'";
                 ResultSet rs= st.executeQuery(str2);
                 String str3="";
                  while(rs.next())
                  {
                 str3= rs.getString(1);
                 out.println("MOVIE ="+str3);
                 out.println();
                 str3= rs.getString(2);
                 out.println("MOVIE id="+str3);
                 out.println();
                 str3= rs.getString(3);
                 out.println("R DATE="+str3);
                 out.println();
                 str3= rs.getString(4);
                 out.println("ACTOR ="+str3);
                 out.println();
                 }
                 }
catch(Exception e)
{
    
}

%>

</br><a href="moviesearch.jsp" >HOME</a>
