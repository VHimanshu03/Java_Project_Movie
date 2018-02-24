<%-- 
    Document   : validate
    Created on : 19 Apr, 2017, 2:26:11 PM
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
                 String admin = request.getParameter("admin");
                 String pwd = request.getParameter("password");
                 String str= "select password from admin where admin_id='"+admin+"'";
                 ResultSet rs= st.executeQuery(str);
                 String str1="";
                  while(rs.next())
                  {
                 str1= rs.getString(1);
                  }
                  if(pwd.equals(str1))
                  {
                      session.setAttribute("name", admin);//session.setAttribute("name","value");
                      response.sendRedirect("movie.jsp");
                  }
                  else
                      response.sendRedirect("index.html");
                  
    }
    
    catch(Exception e)
    {
        out.println(e);
        
      }
    %>
                 
                 