
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
        </tr><tr><td><h2>
        <%
String captcha=(String)session.getAttribute("captcha");
out.println(captcha);
int firstnumber=Integer.parseInt(captcha.substring(0,2));
out.println(firstnumber);
int secondnumber=Integer.parseInt(captcha.substring(3,5));
out.println(secondnumber);
String operator=captcha.substring(2,3);
out.println(operator);
int uans=Integer.parseInt(request.getParameter("captcha"));
out.println(uans);
int result;
if(operator.equals("+")==true)
    {
result=firstnumber+secondnumber;
out.println("result...."+result);
if(uans==result)
{
    session.setAttribute("captchaa","set");
       response.sendRedirect("WelcomePage.jsp");
}
       else
    response.sendRedirect("captchapage.jsp");


}
else
    {
result=firstnumber*secondnumber;
if(uans==result)
{
session.setAttribute("captchaa","set");
         response.sendRedirect("WelcomePage.jsp");

}
else
    out.println("Enter captcha once again");

}

%></h2></td></tr>
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
