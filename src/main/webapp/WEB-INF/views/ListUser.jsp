<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">  
	<tr>
		<th>FirstName</th>
		<th>LastName</th>
		<th>Email</th>
	</tr>
	<c:forEach items="${users}" var="u">
		<tr>
			<td>${u.firstName }</td>
			<td>${u.lastName }</td>
			<td>${u.email }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>