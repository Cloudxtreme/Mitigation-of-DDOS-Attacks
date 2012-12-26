
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
<%
    String usern=(String)session.getAttribute("username");

    if(usern.equalsIgnoreCase("admin"))
{}
else
{response.sendError(403,"Forbidden Access");
}
%>
    <body>
<%
response.setIntHeader("Refresh", 5);
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
        <tr align="center"><td><img src="http://localhost:8080/ImageHost/ResponseTime.png" /></td></tr>
        </table>
    <br>
</div>


    </body>
</html>
