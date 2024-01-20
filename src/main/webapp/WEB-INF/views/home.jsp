<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Site</title>
</head>
<body>
	<h2>Search Film by ID</h2>
	<form action="filmDetails.do" method="get">
		<label for="filmId">Enter Film ID: </label> <input type="text"
			id="filmId" name="id" required> <input type="submit"
			value="Show Film Details">
	</form>
	
	<br>
	<h2>Add Film</h2>
	<form action="NewFilm.do" method="POST">
		<label for="title">Title:</label> <input type="text" name="title">
		<br> <label for="description">Description:</label> <input
			type="text" name="description"> <br> <label
			for="releaseYear">Release Year:</label> <input type="text"
			name="releaseYear"> <br> <input type="submit"
			value="Add Film">
	</form>
</body>
</html>