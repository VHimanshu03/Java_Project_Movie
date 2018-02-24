<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<html>
<body>
<div id="content">


    <p>Displaying table contents: </p>

    <table border="0" cellpadding="10">
        <thead>
            <tr>
                <th>mname</th>
                <th>mid</th>
                <th>rdate</th>
                <th>actor</th>
            </tr>
        </thead>
        <tbody>

<%
     try
    {
    Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root", "root");
                 Statement st=con.createStatement();
                 String str1=request.getParameter("databse");
                 String str2="select * from movie";
                 ResultSet rs=st.executeQuery(str2);
                  while(rs.next()){  
%> 
                      
              <tr>
                <%
                    String mname = rs.getString("mname");
                    String mid = rs.getString("mid");
                    String rdate = rs.getString("rdate");
                    String actor = rs.getString("actor");
                %>
                <td><%=mname %></td>
                <td><%=mid%></td>
                <td><%=rdate %></td>
                <td><%=actor %></td>
            </tr>               

            <%      
                }
    } 
                  catch(Exception e)
                  {
                  out.println(e);
                  } 
            %>
        </tbody>
    </table>
</div>
</body>
</html>
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
   