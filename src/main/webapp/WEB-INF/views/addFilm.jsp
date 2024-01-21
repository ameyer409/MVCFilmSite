<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Film</title>
</head>
<body>

<h2>Film Data Input Form</h2>
<form action="NewFilm.do" method="POST">
		
		<label for="title">Title: </label> 
		<input type="text" name="title" required> 
		<br>
		 
		<label for="description">Description: </label> 
		<input type="text"name="description" required> 
		<br>
		
		<label for="releaseYear">Release Year: </label> 
		<input type="text"name="releaseYear" required> 
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
		<input type="text" name="rentalDuration" value="3" required>
		<br>

		<label for="rentalRate">Rental Rate: </label> 
		<input type="text" name="rentalRate" value="4.99" required>
		<br>

		<label for="length">Film Length: </label> 
		<input type="text" name="length"> 
		<br>

		<label for="replacementCost">Replacement Cost: </label> 
		<input type="text" name="replacementCost" value="19.99" required>
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
		
		<input type="submit" value="Add Film">
	</form>
		
</body>
</html>