
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.io.File,java.util.*,java.lang.*,java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenge Test</title>
        <link href="style.css" type="text/css" rel="stylesheet">
        <script type="text/javascript">
            function validate()
            {
                var username=document.forms["loginform"]["username"].value;
                var password=document.forms["loginform"]["password"].value;
               document.alert(username);
               if(username==null ||username=="" || password=="")
                    {
                        document.alert("required fields are null.complete all the fields");
                      return false;
                                          }
                                          else
                                              {
                                                  return true;
                                              }
            }
</script>
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
       <% String ip=request.getParameter("ip");


        try
{

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
String dataSourceName = "dos";
String dbURL = "jdbc:odbc:" + dataSourceName;
Connection con = DriverManager.getConnection(dbURL, "","");
// try and create a java.sql.Statement so we can run queries

Statement s = con.createStatement();
s.execute("delete from set where ip='"+ip+"'"); // select the data from the table

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
        </table>
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
