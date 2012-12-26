
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Challenge Test</title>
        <link href="style.css" type="text/css" rel="stylesheet">
    <script type="text/javascript">
function validateForm()
{
document.getElementById("sname").innerHTML="";
document.getElementById("username").innerHTML="";
document.getElementById("pass1").innerHTML="";
document.getElementById("pass2").innerHTML="";
document.getElementById("cityy").innerHTML="";
document.getElementById("countryy").innerHTML="";
var sname=document.forms["myForm"]["sname"].value;
var username=document.forms["myForm"]["username"].value;
var pass1=document.forms["myForm"]["pass1"].value;
var pass2=document.forms["myForm"]["pass2"].value;
var city=document.forms["myForm"]["city"].value;
var country=document.forms["myForm"]["country"].value;
if (sname==null || sname=="")
  {
document.getElementById("sname").innerHTML="enter your name";
  return false;
  }
 if (username==null || username=="")
  {
document.getElementById("username").innerHTML="enter your username";
  return false;
  }
  if (pass1==null || pass1=="")
  {
document.getElementById("passw").innerHTML="enter your password";
   return false;
  }
  if (pass2==null || pass2=="")
  {
document.getElementById("passww").innerHTML="enter your password confirmation";
   return false;
  }
  if(pass1!=pass2)
      {
      document.getElementById("passww").innerHTML="Password mismatch";
   return false;

      }
  if (city==null || city=="")
  {
document.getElementById("cityy").innerHTML="enter your city";
   return false;
}
  if (country==null || country=="")
  {
document.getElementById("countryy").innerHTML="enter your country";
   return false;
  }
  return true;
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
            <form name="myForm" action="reg.jsp" onsubmit="return validateForm()" method="post">
               <tr align=center>
        <td><h2>Test Website to check the algorithm</h2></td>
        </tr>

        <tr align="center"><td><b>Register</b></td></tr>
         <tr align=center>
                   <td>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sname"></td><td align="left"><div id="sname"></div></td></tr>
                           <tr align="center"><td>Username: <input type="text" name="username"></td><td align="left"><div id="username"></div></td></tr>
                           <tr align="center"><td>  Password:&nbsp;&nbsp;<input id="pass1" type="password" name="password"></td><td align="left"><div id="passw"></div></td></tr>
                           <tr align="center"><td> Password:&nbsp;&nbsp;<input id="pass2" type="password" name="cp"></td><td align="left"><div id="passww"></div></td></tr>
                            <tr align="center"><td> City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="text" name="city"></td><td align="left"><div id="cityy"></div></td></tr>
             <tr align="center"><td> Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="text" name="country"></td><td align="left"><div id="countryy"></div></td></tr>
                            <tr align="center"><td><input type="submit" value="submit" ></td></tr>              </form> </table>
    <br>
</div>

    </body>
</html>
