<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
</head>
<body>
	    
	<h2>Film Search Results</h2>

	    
	<c:if test="${not empty films}">
     
			<c:forEach var="film" items="${films}">
		
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
        <h3>Actors:</h3>
        <c:forEach var="actor" items="${film.actors}">
            <p>${actor.firstName} ${actor.lastName}</p>
        </c:forEach>
        
        <h3>Categories:</h3>
        <c:forEach var="category" items="${categories}">
            <p>${category.name}</p>
        </c:forEach>
					           				
			<a href="updateFilm.do?filmId=${film.id}">Update Film</a>
			<a href="deleteFilm.do?id=${film.id}">Delete film</a>
						                    
            </c:forEach>


    </c:if>
	         
	<c:if test="${empty films}">
        <p> No films found for the keyword</p>
    </c:if>
	<br>
	<a href="/MVCFilmSite">Return to Home Page</a>

</body>
</html>