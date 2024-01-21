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
		<label for="filmId">Enter Film ID: </label> 
		<input type="text"
			id="filmId" name="id" required> <input type="submit"
			value="Show Film Details">
	</form>

	<br>
	
	<h2>Add Film</h2>
	<a href="addFilm.do">click here!</a>
	
				
		 <h2>Search Film by keyword</h2>

    <form action="searchResults.do" method="get">
        <label for="keyword">Enter Keyword:</label>
        <input type="text" id="keyword" name="keyword" required>
        <button type="submit">Search</button>
    </form>
			
</body>
</html>