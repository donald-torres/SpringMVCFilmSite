<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Film Keyword</title>
</head>
<body>
<a href="home.do">Return to Home</a><br/>
<c:choose>
<c:when test="${not empty film}">
		<c:forEach items="${film}" var="film">
			<ul>
				<li><c:out value="Film ID: ${film.id}"/></li>
				<li><c:out value="Film Title: ${film.title}"/></li>
				<li><c:out value="Film Language: ${film.language}"/></li>
				<li><c:out value="Film Description: ${film.description}"/></li>
				<li><c:out value="Film Release Year: ${film.releaseYear}"/></li>
				<li><c:out value="Film Rental Duration: ${film.rentalDuration}"/></li>
				<li><c:out value="Film Rental Rate: ${film.rentalRate}"/></li>
				<li><c:out value="Film Length: ${film.length}"/></li>
				<li><c:out value="Film Replacement Cost: ${film.replacementCost}"/></li>
				<li><c:out value="Film Rating: ${film.rating}"/></li>
				<li><c:out value="Film Special Features: ${film.specialFeatures}"/></li>
			</ul>
		</c:forEach>
		</c:when>
		<c:otherwise>
			<p>No Films found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>