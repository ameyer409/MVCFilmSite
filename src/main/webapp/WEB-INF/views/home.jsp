<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <input type="text" id="filmId" name="id" required>
        <input type="submit" value="Show Film Details">
    </form>
</body>
</html>