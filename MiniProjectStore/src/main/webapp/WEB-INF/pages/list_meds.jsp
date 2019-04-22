<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body background="images/bg.jpg">
<h1 style="color:red;text-align:center">All Medicines List</h1>
<a title="home" href="welcome.htm"><img title="home" src="images/oracle_java.png" width="170" height="60"></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a "title="add" href="insert.htm"><img src="images/add.jpg" width="60" height="60"></a>
     &nbsp; &nbsp;
 <a title="home" href="welcome.htm"><img title="home" src="images/home.png" width="60" height="60"></a>
 <br><br>
<c:choose>
	<c:when test="${!empty list_meds}">
		<table align="center"border="1" bgcolor="cyan">
			<tr>
				<th>Medicine No</th>
				<th>Medicine Name</th>
				<th>Formula</th>
				<th>MFG Date</th>
				<th>EXP Date</th>
				<th>Price</th>
				<th>Country</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="dto" items="${list_meds}">
				<tr>
					<td>${dto.mId}</td>
					<td>${dto.mName}</td>
					<td>${dto.formula}</td>
					<td>${dto.mfgDate}</td>
					<td>${dto.expDate}</td>
					<td>${dto.price}</td>
					<td>${dto.country}</td>
					<td><a title="update" href="update.htm?cno=${dto.mId}"><img src="images/update.jpg" width="50" height="50"></a></td>
       <td><a title="delete" href="delete.htm?cno=${dto.mId}" onclick="return confirm('Do You Really Want To Delete? Think Again!')"><img src="images/delete.png" width="50" height="50"></a></td>
					
			</tr>
			</c:forEach>
		</table>

	</c:when>

	<c:otherwise>
		<b>Records not found</b>
	</c:otherwise>
</c:choose>
<br>

 
   
 <br><br>

 <p align="center">&copy; 2019 Indraneel.oracle.java Rights Reserved &copy;<p>  
    
    </script>
 
 </script>
