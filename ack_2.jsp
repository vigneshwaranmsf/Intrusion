<%-- 
    Document   : ack
    Created on : Feb 26, 2012, 11:33:21 AM
    Author     : vinodth
--%>

<%@page import="Connection.DB"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="suntile.jpg">
        <div style="margin: 200px 0px 0px 350px;background-color:#cccccc;height: 150px;width: 700px;border-style: groove">
            <center>   <h1>  malicious Activities </h1></center>
        <%
        try
        {
     DB db= new DB();
int i=db.Insert("update user set status='0' where id='"+session.getAttribute("username")+"'");
        }
catch(Exception e)
        {
    e.printStackTrace();
    }
        
        %>
            <form method="POST" action="index.jsp">

            <pre>                               <input style="color: #398a00" type="submit" value="       Try again        " tabindex="3" name="command"></pre>

        </form></div>
    </body>
</html>
