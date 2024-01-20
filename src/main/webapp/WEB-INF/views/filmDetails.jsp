<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    
<meta charset="UTF-8">
    
<title>Film Details</title>
</head>
<body>
	    
	<h2>Film Details</h2>
	    
	<c:choose>
		<c:when test="${not empty film}">
        <p>ID: ${film.id}</p>
        <p>Title: ${film.title}</p>
        <p>Description: ${film.description}</p>
        <p>Release year: ${film.releaseYear}</p>
        <p>Language ID: ${film.languageId}</p>
        <p>Rental duration: ${film.rentalDuration}</p>
        <p>Rental rate: ${film.rentalRate}</p>
        <p>Length: ${film.length}</p>
        <p>Replacement cost: ${film.replacementCost}</p>
        <p>Rating: ${film.rating}</p>
			<br>
			<a href="updateFilm.do?filmId=${film.id}">Update Film Data</a>
			<br>
			<a href="deleteFilm.do?id=${film.id}">Delete film by ID</a>
			<br>
		</c:when>

		<c:otherwise>
			<p>No film found for this film ID. Enter a valid ID.</p>
		</c:otherwise>
	</c:choose>

	<a href="/MVCFilmSite">Return to Home Page</a>



</body>
</html>