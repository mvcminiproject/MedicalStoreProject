<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
    <style type="text/css">
 span{color:red;font-size:50px}

</style>
	<body background="images/pic01.png"  ></body>


   <marquee><b><h1 style="color:lime">${res}</h1></b></marquee>
   <c:choose>
    <c:when test="${!empty yes}">
    	<h1 style="color:green;text-align:center"><a href="list_meds.htm">GET THE LIST OF MEDICINES</a></h1>
    </c:when>
    </c:choose> 
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <c:choose>
    <c:when test="${!empty no}">
    	<center><input type='submit' action="login.htm" value="Get Me Out Of Here" style='background-color:green; color:white; font-size:15pt; border:5px solid #336600;padding:3px'></center>
    </c:when>
    </c:choose> 
    
    <a title="home" href="welcome.htm"><img title="home" src="images/home.png" width="60" height="60"></a>