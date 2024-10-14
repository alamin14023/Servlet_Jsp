<%@page import="org.apache.tomcat.jakartaee.commons.lang3.ObjectUtils.Null"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
    
    <%
    
       response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //solving page return cache HTTP 1.1
       response.setHeader("Pragma", "no-cache"); //HTTP 1.0
       response.setHeader("Expires", "0"); //Proxies
       
       if(session.getAttribute("username") == null)
       {
    	   response.sendRedirect("login.jsp");
       }
    %>
   Welcome ${username}!
   
   <a href="videos.jsp">Videos Here</a>
   
   <form action="logout">
     <input type="submit" value="Logout">
   </form>
</body>
</html>