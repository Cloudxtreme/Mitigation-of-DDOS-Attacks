<%-- 
    Document   : checkpage
    Created on : Apr 2, 2012, 11:26:19 AM
    Author     : Dayal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.File,java.util.*,java.lang.*,java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
long cm;
Calendar currentdate=Calendar.getInstance();
 cm=currentdate.getTimeInMillis();
String a=request.getRemoteAddr();
String ip;
int l=25;
java.lang.Integer iVersion= new Integer(1);;
//if(session.isNew())
//{
       session.setAttribute("count", iVersion);
//check whether ip is new
long milliseconds2=0,prevdate=0,diff=0,milliseconds1=0;
       try
{
    ip=request.getRemoteAddr();
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
String dataSourceName = "dos";
String dbURL = "jdbc:odbc:" + dataSourceName;
Connection con = DriverManager.getConnection(dbURL, "",""); 
// try and create a java.sql.Statement so we can run queries

Statement s = con.createStatement();
s.execute("select * from details where ip='"+ip+"'"); // select the data from the table
ResultSet rs = s.getResultSet(); // get any ResultSet that came from our quer
if(rs==null)
{
    int flag=rs.getInt(5);
    out.println("flag.."+flag);
    if(flag==1)
        {
    response.sendError(403, "forbidden");
    }
  Calendar calendar2 = Calendar.getInstance();

  milliseconds2 = calendar2.getTimeInMillis()/1000;
  
  //out.println(milliseconds2);


s.execute("insert into details values('"+ip+"',"+milliseconds2+",100,20)");
       // if rs == null, then there is no ResultSet to view
 // this will step through our data row-by-row
}
else
    {
rs.next();
int flag=rs.getInt(5);
    out.println("flag.."+flag);
    if(flag==1)
        {
    response.sendError(403, "forbidden");
    }
/* the next line will get the first column in our current row's ResultSet 
 as a String ( getString( columnNumber) ) and output it to the screen */ 
 String ip2=rs.getString(1);
prevdate=rs.getLong(2);
long limit=rs.getLong(4);
 Calendar calendar1 = Calendar.getInstance();
 milliseconds1 = calendar1.getTimeInMillis()/1000;
 diff = milliseconds1-prevdate;
 long milli;
  out.println(prevdate+","+diff+","+milliseconds1);
  long diffSeconds = diff / 1000;
  long diffMinutes = diff / (60 * 1000);
  long diffHours = diff / (60 * 60 * 1000);
  long diffDays = diff / (24 * 60 * 60 * 1000);
  milli=milliseconds1-1000;
s.execute("select count(*) from details where lastaccessdate>="+milli+"");
rs=s.getResultSet();
rs.next();
        int l1;
        l1=Integer.parseInt(rs.getString(1));
        out.println("threshold....."+l1);
           if(diff <=1) //set by the admin
     {
cm=cm-200;
                    limit=limit+1;
      if(l1>1)
     l=l/l1;
      }
  else
      {
   
      }

       if(limit > 75)
           {
  response.sendError(403, "forbidden");
  limit=limit-10;
  }

      s.execute("update details set lastaccessdate="+milliseconds1+",requestinterval="+diff+",noofreq="+limit+" where ip='"+ip2+"'");

}

s.close();
con.close();
}
catch(SQLException e)
        {
out.println(e);
        ip=request.getRemoteAddr();
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
String dataSourceName = "dos";
String dbURL = "jdbc:odbc:" + dataSourceName;
Connection con = DriverManager.getConnection(dbURL, "","");
// try and create a java.sql.Statement so we can run queries
Statement s = con.createStatement();
 Calendar calendar2 = Calendar.getInstance();

  milliseconds2 = calendar2.getTimeInMillis()/1000;
  out.println(milliseconds2);


s.execute("insert into details values('"+ip+"',"+milliseconds2+",100,20)");

s.close();
con.close();
}
long em,res;
Calendar endtime=Calendar.getInstance();
em=endtime.getTimeInMillis();
res=em-cm;

//}
/*else
    {

try {
     // assume the worst
iVersion = (Integer) session.getAttribute("count");
iVersion++;
    session.setAttribute("count", iVersion);
} catch ( NumberFormatException nfe ) {
out.println(nfe);
}

   
}

 out.println(iVersion);

if(iVersion>1)
    {
response.sendError(403,"forbidden");
} */


%>
        <h1>Hello World!</h1>
    </body>
</html>
