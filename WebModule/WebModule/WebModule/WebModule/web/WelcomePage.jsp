
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.io.File,java.util.*,java.lang.*,java.sql.*,javax.servlet.*,javax.servlet.http.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenge Test</title>
        <link href="style.css" type="text/css" rel="stylesheet">
    </head>
    <body>
 <%
    String usern=(String)session.getAttribute("username");

    if(usern.equalsIgnoreCase(""))
{response.sendError(403,"Forbidden Access");}
     String cap=(String)session.getAttribute("captchaa");

    if(cap.equalsIgnoreCase("enter"))
{response.sendRedirect("captchapage.jsp");}

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


        <table width=100%>

               <tr align=center>
        <td><h2>Test Website to check the algorithm</h2></td>
        </tr>

        <tr align="center"><td><b>Welocme to the DoS Check Website</b></td></tr>
        <tr align="center"><td><b>Welcome <%=session.getAttribute("name")%></b></td></tr>
        <tr align="center"><td><b>Links to Vulnerable Request Forms</b></td></tr>

        <tr align=center>
                   <td><h4><a href="Floodingthroughreq.jsp">DOS Vulenerable User Details Request Link</a></h4></td>
        </tr>
        <tr align=center>
                   <td><h4><a href="req.jsp">Patched User Details Request Link</a></h4></td>
        </tr>
        <tr align="center"><td><h4><a href="feedback.jsp">Feedback posting link</a></h4></td></tr>
         </table>
    <br>
</div>


    </body>
</html>
