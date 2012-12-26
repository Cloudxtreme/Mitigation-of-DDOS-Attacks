
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenge Test</title>
        <link href="style.css" type="text/css" rel="stylesheet">
    </head>
    <body>
  <%         String cap=(String)session.getAttribute("captchaa");

    if(cap.equalsIgnoreCase("enter"))
{response.sendRedirect("captchapage.jsp");}

%>
<div id="header">
    <table width=100%>
        <tr align=center>
<td><h2>Mitigation of DoS Attacks &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <% out.println("<a href=logout"
                   + ".jsp>logout</a>"); %></h2></td></tr>
        <tr align=center>
<td><h2>Welcome <%=session.getAttribute("name")%></h2> </td></tr>
        <tr align="center"><td><img  width="70%" src="cover1.jpg" /> </td></tr>
    </table>
</div>
<div id="content">
        <table width=100%>
            <form method="post" action="feed.jsp">
               <tr align=center>
        <td><h2>Test Website to check the algorithm</h2></td>
        </tr>

        <tr align="center"><td><b>Vulnerable feedback posting Form</b></td></tr>
        <tr align="center"><td><b>Enter Your feedback for the website</b></td></tr>
             
          <tr align=center>
              <td><h4>feedback: <textarea rows="10" cols="40" name="feedback"></textarea></h4></td>
        </tr>
        <tr align="center"><td><input type="submit" value="Submit"></td></tr>
        </form> </table>
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
