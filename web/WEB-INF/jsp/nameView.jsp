<%--
    Document   : nameView
    Created on : May 2, 2010, 2:06:51 PM
    Author     : nbuser
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Your Name</title>
    </head>
    <body>
        <h1>Ente Name!</h1>

        
 <h2>${producto}</h2>
 <h2>${lista.size()}</h2>
 <c:forEach items="${lista}" var="p"> 
    nombre: ${p.nombre}
 </c:forEach>
  
    </body>
</html>