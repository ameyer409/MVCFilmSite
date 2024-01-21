<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Added</title>
</head>
<body>


	<c:choose>
		<c:when test="${not empty film}">
		<p>Film Added!</p>
				Id: ${film.id}
				<br>
				Title: ${film.title}
				<br>
				Description: ${film.description}
				<br>
		</c:when>
		<c:otherwise>
			<p>Film Not Added</p>
		</c:otherwise>
	</c:choose>
	<a href="/MVCFilmSite">Return to Home Page</a>
</body>
</html>