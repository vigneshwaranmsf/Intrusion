<%@page import="Connection.DB"%>
.............................................................................000<%--
    Document   : login
    Created on : Jan 31, 2011, 4:54:29 PM
    Author     : vinodth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<html>
    <HEAD>
  
  
 </HEAD>

 <BODY>
 <br><br><br><br><br>
 <table width="250px" align="center" bgcolor="#CDFFFF" border=0 style="border:1px solid;">
<%

 String userid=request.getParameter("userid");
		String role=request.getParameter("role");
                String client=request.getParameter("client");
                String data=request.getParameter("data");
		String obj=request.getParameter("obj");
		String password=request.getParameter("password");
	Statement st;
	
    try {
       DB db= new DB();
	    
	   
	     String qry="select * from user where id='"+userid+"' and pass = '"+password+"' and data = '"+data+"'and obj = '"+obj+"' and app='"+client+"' ";
           

	
    
	   ResultSet  rs = db.Select(qry);
	   if(rs.next())
		{
		 
		response.sendRedirect("search.jsp");
		
	}
    else{
   response.sendRedirect("ack_2.jsp");
    }}
	catch (Exception e) {
      e.printStackTrace();
    }
	





%>

 </table> 
 </BODY>
</html>
