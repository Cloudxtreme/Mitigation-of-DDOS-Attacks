
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.io.File,java.util.*,java.lang.*,java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenge Test</title>
        <link href="style.css" type="text/css" rel="stylesheet">

    </head>
    <body>
<% out.println(request.getParameter("ip"));%>
<div id="header">
    <table width=100%>
        <tr align=center>
<td><h2>Mitigation of DoS Attacks</h2></br><img  width="70%" src="cover1.jpg" /> </td></tr>
    </table>
</div>
<div id="content">

    <% String ip=request.getParameter("ip");


        try
{

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
String dataSourceName = "dos";
String dbURL = "jdbc:odbc:" + dataSourceName;
Connection con = DriverManager.getConnection(dbURL, "","");
// try and create a java.sql.Statement so we can run queries

Statement s = con.createStatement();
s.execute("update details set suspensionflag=0 where ip='"+ip+"'"); // select the data from the table

response.sendRedirect("UserAccessLogs.jsp");
// get any ResultSet that came from our quer


/* the next line will get the first column in our current row's ResultSet
 as a String ( getString( columnNumber) ) and output it to the screen */


}
catch(SQLException e)
        {
out.println("Update Error");
}
%>
        <table width=100%>

        </table>
    <br>
</div>
<!-- Tracker Code Starts Here-->

<!-- Tracker Code Ends Here-->

    </body>
</html>
