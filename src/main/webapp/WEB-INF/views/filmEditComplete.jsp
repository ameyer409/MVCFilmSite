<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:choose>
	<c:when test="${not empty film}">
		<title>Film Updated</title>
	</c:when>
	<c:otherwise>
		<title>Updated Incomplete</title>
	</c:otherwise>
</c:choose>
</head>
<body>
	<c:choose>
		<c:when test="${not empty film}">
			<p>Film Updated!</p>
		</c:when>
		<c:otherwise>
			<p>Film Could Not Be Updated</p>
		</c:otherwise>
	</c:choose>
	<a href="/MVCFilmSite">Return to Home Page</a>
</body>
</html>