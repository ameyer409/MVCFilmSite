<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Database</title>
</head>
<body>
	Some Stuff

	<form action="NewFilm.do" method="POST">
		<label for="title">Title:</label> <input type="text" name="title">
		<br> <label for="description">Description:</label> <input
			type="text" name="description"> <br> <label
			for="releaseYear">Release Year:</label> <input type="text"
			name="releaseYear"> <br> <input type="submit"
			value="Add Film">
	</form>

	<c:choose>
		<c:when test="${not empty film}">
			<ul>
				<li>${film.title}</li>
				<li>${film.description}</li>
				<li>${film.releaseYear}</li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>