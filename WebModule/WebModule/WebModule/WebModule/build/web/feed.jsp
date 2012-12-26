
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
            <form  method="post" action="logincheck.jsp">
                <tr align=center>
        <td><h2>Test Website to check the algorithm</h2></td>
        </tr>
        <%
        Integer count1;
count1=(Integer)session.getAttribute("count1");
long diff=2000;
if(count1==0)
    {
    Calendar c=Calendar.getInstance();
    long cinms=c.getTimeInMillis();
session.setAttribute("time1",cinms);
count1++;
session.setAttribute("count",count1);
}
else
    {
   long cms=(Long)session.getAttribute("time1");
   Calendar current=Calendar.getInstance();
   long currentinms=current.getTimeInMillis();
   diff=currentinms-cms;
   session.setAttribute("time1",currentinms);
out.println("diff......"+diff);
}
 
            if(diff<5000)
                {

    count1++;
    session.setAttribute("count1",count1);
    }
    session.setAttribute("count1",count1);
    if(count1>5)
{count1=0;
  session.setAttribute("count1",count1);
               response.sendRedirect("captchapage.jsp");

 }

String username=(String)session.getAttribute("username");
String feedback=request.getParameter("feedback");
try
        {
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
String dataSourceName = "dos";
String dbURL = "jdbc:odbc:" + dataSourceName;
Connection con = DriverManager.getConnection(dbURL, "","");
// try and create a java.sql.Statement so we can run queries
Statement s = con.createStatement();



s.execute("insert into feedback values('"+username+"','"+feedback+"')");

s.close();
con.close();
response.sendRedirect("feedback.jsp");
}
catch(Exception e)
        {
out.println(e);
}

%>
            </form>    </table>
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
