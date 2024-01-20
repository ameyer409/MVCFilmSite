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
		
		<label for="title">Title: </label> 
		<input type="text" name="title" value="${film.title}" required> 
		<br>
		 
		<label for="description">Description: </label> 
		<input type="text"name="description" value="${film.description}" required> 
		<br>
		
		<label for="releaseYear">Release Year: </label> 
		<input type="text"name="releaseYear" value="${film.releaseYear}" required> 
		<br>
		
		<label for="languageId">Language: </label> 
		<select name="languageId" required>
			<option value="1">English</option>
			<option value="2">Italian</option>
			<option value="3">Japanese</option>
			<option value="4">Mandarin</option>
			<option value="5">French</option>
			<option value="6">German</option>
		</select> 
		<br>
		
		<label for="rentalDuration">Rental Duration: </label> 
		<input type="text" name="rentalDuration" value="${film.rentalDuration}" required>
		<br>

		<label for="rentalRate">Rental Rate: </label> 
		<input type="text" name="rentalRate" value="${film.rentalRate}" required>
		<br>

		<label for="length">Film Length: </label> 
		<input type="text" name="length" value="${film.length}" required> 
		<br>

		<label for="replacementCost">Replacement Cost: </label> 
		<input type="text" name="replacementCost" value="${film.replacementCost}" required>
		<br>

		<label for="rating">Rating: </label> 
		<select name="rating" value="${film.rating}" required>
			<option value="G">G</option>
			<option value="PG">PG</option>
			<option value="PG-13">PG-13</option>
			<option value="R">R</option>
			<option value="NC-17">NC-17</option>
		</select> 
		<br>
		
		<input type="submit" value="Update Film Data">
	</form>

</body>
</html>