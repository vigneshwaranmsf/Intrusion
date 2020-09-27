<%-- 
    Document   : search_4
    Created on : May 29, 2014, 12:58:02 PM
    Author     : vinoth
--%>

<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <script>
     
     
     function validateTime() {
var userid=document.getElementById("userid").value;
var password=document.getElementById("password").value;
var role=document.getElementById("role").value;
var app=document.getElementById("app").value;
var ip=document.getElementById("ip").value;
var day=document.getElementById("day").value;
var data=document.getElementById("data").value;
var schema=document.getElementById("schema").value;
var obj=document.getElementById("obj").value;
var cmd=document.getElementById("cmd").value;
var att=document.getElementById("att").value;

 var ipadd = /^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$/.test(ip);
  var userid1 = /^[A-Za-z]{3,20}$/.test(userid);
   var role1 = /^[A-Za-z]{3,20}$/.test(role);
    var app1 = /^[A-Za-z]{3,20}$/.test(app);
     var day1 = /^[A-Za-z]{3,20}$/.test(day);
      var data1 = /^[A-Za-z]{3,20}$/.test(data);
       var schema1 = /^[A-Za-z]{3,20}$/.test(schema);
        var cmd1 = /^[A-Za-z]{3,20}$/.test(cmd);
         var att1 = /^[A-Za-z]{3,20}$/.test(att);
           var obj1 = /^[A-Za-z]{3,20}$/.test(obj); 
    
    
if(userid===""){    
    alert("Error: uid cannot be blank!");
    return false;
}
if(!userid1){    
    alert("Error: uid Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}
if(password===""){    
    alert("Error: pwd cannot be blank!");
    return false;
}
if(role===""){    
    alert("Error: Role cannot be blank!");
    return false;
}
if(!role1){    
    alert("Error: Role Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}
if(app===""){    
    alert("Error: Application cannot be blank!");
    return false;
}
if(!app1){    
    alert("Error: Application Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}

if(day===""){    
    alert("Error: Shift cannot be blank!");
    return false;
}
if(!day1){    
    alert("Error: Timing Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}
if(data===""){    
    alert("Error: Database cannot be blank!");
    return false;
}

if(!data1){    
    alert("Error: Database Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}
if(schema===""){    
    alert("Error: schema cannot be blank!");
    return false;
}
if(!schema1){    
    alert("Error: Scheme Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}
if(obj===""){    
    alert("Error: Objective cannot be blank!");
    return false;
}
if(!obj1){    
    alert("Error: Objectives Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}
if(cmd===""){    
    alert("Error: Commend cannot be blank!");
    return false;
}
if(!cmd1){    
    alert("Error: Comment Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}
if(att===""){    
    alert("Error: Attribute cannot be blank!");
    return false;
}
if(!att1){    
    alert("Error: Attribute Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}

else{return  true;}

}
 </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Intrusion Detection  -PLC Technologies.in</title>
<meta name="keywords" content="free css template, liquid contact form, CSS, HTML" />
<meta name="description" content="Liquid Contact Page - free CSS template provided by templatemo.com for anyone." />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body> 
<div id="templatemo_header_wrapper">
    <div id="templatemo_header">
        <div id="site_title">
            <a href="">Intrusion Detection System</a>
        </div> <!-- end of site_title -->
        <div id="templatemo_menu">
          <ul>
                <li><a href="adminreg.jsp" class="current">Home</a></li>
                <li><a href="Blocked.jsp" class="current">Blocked Users</a></li>
                <li><a href="Query.jsp" class="current">Query's</a></li>
                <li><a href="Blocked_1.jsp" class="current">Block</a></li>
                <li class="last"><a href="signout.jsp" class="current">LogOut</a></li>
                <li class="last"><a href="Blocked_2.jsp" class="current">UnBlock-URL</a></li>
                 
            </ul>
            
            
            
            <div class="cleaner"></div>    	
        </div>
        <div class="cleaner"></div>
    </div> <!-- end of header -->
</div>
<div id="templatemo_wrapper">    
    
    <div id="templatemo_content_top"></div>
    
    <div id="templatemo_content">
    	<div id="templatemo_main_content"  style="height: 500px">
      	
    
       <div style="margin-left:120px" style="height: 500px">
        	    <center>
 
  <% String msg= request.getParameter("msg") ;                 %>
    <%
if(msg != null){
%>
<lable><pre> <b><%=msg%></b> </lable>
<%}%>  

<form method="POST" action="adminregcheck.jsp" >
        
    <br><br><b>CREATE USER LOGIN </b><BR><br> <center><table><tr>
    
            <td>  <b>  User ID</b>       </td>     <td> <input type="text" id="userid"name="userid" size="21" style="border-style: ridge; border-width: 1" tabindex="1"></td></tr>
        <tr><td> <b>  Password  </b>     </td>     <td> <input type="password"id="password" name="password" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
        <tr><td> <b>  Role      </b>     </td>     <td> <input type="text" id="role" name="role" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
        <tr><td> <b>  Applicant </b>     </td>     <td> <input type="text" id="app"name="app" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
        <tr><td> <b>  IP Address </b>    </td>     <td> <input type="text" id="ip"name="ip" value="<%=request.getRemoteHost() %>"size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
        <tr><td> <b>  Days       </b>    </td>     <td> <input type="text" id="day"name="day" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
        <tr><td> <b>  Data       </b>    </td>     <td> <input type="text" id="data"name="data" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
        <tr><td> <b>  Schema     </b>    </td>     <td> <input type="text" id="schema"name="schema" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
        <tr><td> <b>  Object     </b>    </td>     <td> <input type="text" id="obj"name="obj" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
        <tr><td> <b>  Command  </b>      </td>     <td> <input type="text" id="cmd"name="cmd" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
        <tr><td> <b>  Attribute  </b>    </td>     <td> <input type="text" id="att"name="att" size="21" style="border-style: ridge; border-width: 1" tabindex="2"></td></tr>
       
        <tr></tr><tr></tr><tr></tr><tr></tr>      
        <tr><td><input style="color: #398a00" type="submit" value="       Save        " tabindex="3" name="command"></td>
            <td><input style="color: #398a00" type="reset" value="       Reset        " tabindex="3" name="command"></td></tr>
        </table>
</form>
</center>
       </div>   
        <center><a href="View_Users.jsp">VIEW ENTIRE USER RECORD</a></center>
        
       
        
        <div class="clear"></div> 
        	
        </div>
        
        
        
        <div class="cleaner"></div>
    </div>
    <div id="templatemo_content_bottom"></div>
    
    <div id="templatemo_footer">

        Copyright © 2048 <a href="#">Your Company Name</a> | Designed by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
    
    </div> <!-- end of templatemo_footer -->
     
</div> <!-- end of wrapper -->
</body>
</html>

