
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.io.File,java.util.*,java.lang.*,java.sql.*,javax.servlet.*,javax.servlet.http.*" %>
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
<td><h2>Mitigation of DoS Attacks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <% out.println("<a href=logout"
                   + ".jsp>logout</a>"); %></h2></br><img  width="70%" src="cover1.jpg" /> </td></tr>
    </table>
</div>
<div id="content">

    <%
    String usern=(String)session.getAttribute("username");

    if(usern.equalsIgnoreCase("admin"))
{}
else
{response.sendError(403,"Forbidden Access");
}
%>
        <table width=100%>

               <tr align=center>
        <td><h2>Test Website to check the algorithm</h2></td>
        </tr>

        <tr align="center"><td><b>Welocme to the DoS Check Website</b></td></tr>
        <tr align="center"><td><b>Welcome <%=session.getAttribute("name")%></b></td></tr>
        <tr align="center"><td><b>Links to Vulnerable Request Forms</b></td></tr>

        <tr align=center>
                   <td><h4><a href="UserAccessLogs.jsp">User Access Logs</a></h4></td>
        </tr>
        <tr align=center>
                   <td><h4><a href="Graphs.jsp">Response Time Monitoring Graph</a></h4></td>
        </tr>
        
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
