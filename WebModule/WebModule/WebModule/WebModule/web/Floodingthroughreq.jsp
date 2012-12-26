
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.io.File,java.util.*,java.lang.*,java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenge Test</title>
        <link href="style.css" type="text/css" rel="stylesheet">
    </head>
    <body>

<div id="header">
    <table width=100%>
        <tr align=center>
<td><h2>Mitigation of DoS Attacks</h2></br><img  width="70%" src="cover1.jpg" /> </td></tr>
    </table>
</div>
<div id="content">


        <table width=100%>

               <tr align=center>
        <td><h2>Test Website to check the algorithm</h2></td>
        </tr><%
       String username=(String)session.getAttribute("username");

        try
{

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
String dataSourceName = "dos";
String dbURL = "jdbc:odbc:" + dataSourceName;
Connection con = DriverManager.getConnection(dbURL, "","");
// try and create a java.sql.Statement so we can run queries

Statement s = con.createStatement();
s.execute("select * from userdet where userid='"+session.getAttribute("username")+"'"); // select the data from the table
ResultSet rs = s.getResultSet(); // get any ResultSet that came from our quer

if(rs==null)
{
 out.println("<tr align=center><td>Invalid username or password");

       // if rs == null, then there is no ResultSet to view
 // this will step through our data row-by-row
}
else
    {
rs.next();
/* the next line will get the first column in our current row's ResultSet
 as a String ( getString( columnNumber) ) and output it to the screen */
 String name=rs.getString(3);
 String city=rs.getString(4);
 String country=rs.getString(5);
 out.println("<tr align=center><h2><td>Name:"+name+"</td></tr><tr align=center><td align=center>City:"+city+"</td></tr><tr align=center><td>Country:"+country+"");
}
}
catch(SQLException e)
        {
out.println("error");
}
%>
                               </td></h2></tr>  </table>
    <br>
</div>
<!-- Tracker Code Starts Here-->
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-18769611-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<!-- Tracker Code Ends Here-->

    </body>
</html>
