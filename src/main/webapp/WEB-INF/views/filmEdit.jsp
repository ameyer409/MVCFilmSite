<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Film Data</title>
</head>
<body>
	<h2>Edit Film Data</h2>

	<form action="editFilm.do" method="GET">
		<input type="hidden" name="id" value="${film.id}"> 
		<input type="hidden" name="languageId" value="${film.languageId}"> 
		<input type="hidden" name="rentalDuration" value="${film.rentalDuration}">
		<input type="hidden" name="rentalRate" value="${film.rentalRate}"> 
		<input type="hidden" name="length" value="${film.length}">
		<input type="hidden" name="replacementCost" value="${film.replacementCost}"> 
		<input type="hidden" name="rating" value="${film.rating}">
		

		<label for="title">Title: </label> 
		<input type="text" name="title" value="${film.title}" required> 
		<br>
		<label for="description">Description: </label> 
		<input type="text" name="description" value="${film.description}" required> 
		<br>
		<label for="releaseYear">Release Year: </label> 
		<input type="text" name="releaseYear" value="${film.releaseYear}" required>
		<br> 
		<input type="submit"value="Update Film Data">
	</form>

</body>
</html>