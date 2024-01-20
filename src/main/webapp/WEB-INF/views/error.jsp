<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
</head>
<body>
    <h2>Result</h2>
    <c:if test="${errorMessage == true}">
        <p>Film deleted successfully</p>
    </c:if>
    <c:if test="${errorMessage == false}">
        <p>Film was not deleted</p>
    </c:if>
    <br>
    	<a href="/MVCFilmSite">Return to Home Page</a>
    
</body>
</html>