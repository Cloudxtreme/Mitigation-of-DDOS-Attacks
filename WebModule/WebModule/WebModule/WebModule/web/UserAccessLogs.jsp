
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.io.File,java.util.Date,java.lang.*,java.sql.*,java.text.*;" %>
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
<%
    String usern=(String)session.getAttribute("username");

    if(usern.equalsIgnoreCase("admin"))
{}
else
{response.sendError(403,"Forbidden Access");
}
%>
<div id="header">
    <table width=100%>
        <tr align=center>
<td><h2>Mitigation of DoS Attacks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <% out.println("<a href=logout"
                   + ".jsp>logout</a>"); %></h2></br><img  width="70%" src="cover1.jpg" /> </td></tr>
    </table>
</div>
<div id="content">
               <table width=100% border="10">
            <tr><th>User IP</th><th>Last Access Date</th>
                <th>Average Mode of Req Interval</th>
                <th>Request Counter</th>
                <th>Status</th>
                <th> Suspend User</th>
                
                <th>Delete Details </th>
                  <th> Allow User</th>
            <tr>

                <%



//check whether ip is new
try
{

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
String dataSourceName = "dos";
String dbURL = "jdbc:odbc:" + dataSourceName;
Connection con = DriverManager.getConnection(dbURL, "","");
// try and create a java.sql.Statement so we can run queries

Statement s = con.createStatement();
s.execute("select * from details"); // select the data from the table
ResultSet rs = s.getResultSet(); // get any ResultSet that came from our quer

if(rs==null)
{
 out.println("No Logs Available");

       // if rs == null, then there is no ResultSet to view
 // this will step through our data row-by-row
}
else
    {
    out.println("<tr>");
    %>
    <%

while(rs.next()) { %>

            <tr>
                <td><%
String ip=rs.getString(1);
out.println(ip);%>
   
    </td>
<td><%long mil=rs.getLong(2)*1000;
SimpleDateFormat sdf=new SimpleDateFormat("MMM dd,yyyy HH:MM");
Date resultdate=new Date(mil);
out.println(sdf.format(resultdate));


%></td>
<td><%out.println(rs.getString(3));%></td>
<td><%out.println(rs.getString(4));%></td>
<td>
<% int flag1=rs.getInt(5);
if(flag1==1)
    {out.println("Blocked");}
else
    {out.println("Allowed");}%></td>
<td><form method="post" action="BlockUser.jsp"><input type="hidden" name="ip" value="<%=ip%>" /><input type="submit" value="Block User"> </form></td>
<td><form method="post" action="DeleteUser.jsp"><input type="submit" value="Delete User"> </form></td>
<td><form method="post" action="AllowUser.jsp"><input type="hidden" name="ip" value="<%=ip%>" /><input type="submit" value="Allow User"> </form></td>
            </tr>
                            <%}%>
                                                        <%
                                                 
/* the next line will get the first column in our current row's ResultSet
 as a String ( getString( columnNumber) ) and output it to the screen */

s.close();
con.close();
}
}
catch(SQLException e)
        {
out.println(e);
}




%>

        </table>

    <br>
</div>
<!-- Tracker Code Starts Here-->

<!-- Tracker Code Ends Here-->

    </body>
</html>
