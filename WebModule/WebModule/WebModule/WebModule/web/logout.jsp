<%--
    Document   : logout.jsp
    Created on : Feb 2, 2012, 4:46:34 AM
    Author     : Dayal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.*" %>

<%session.invalidate();%>
<% response.sendRedirect("index.jsp");%>
