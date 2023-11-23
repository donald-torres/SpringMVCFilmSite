<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Selected Film</title>
</head>
<body>
<a href="home.do">Return to Home</a><br/>
<c:choose>
		<c:when test="${! empty film}">
			<ul>
				<li>Film ID: ${film.id}</li>
				<li>Film Title: ${film.title}</li>
				<li>Film Language: ${film.language}</li>
				<li>Film Description: ${film.description}</li>
				<li>Film Release Year: ${film.releaseYear}</li>
				<li>Film Rental Duration: ${film.rentalDuration}</li>
				<li>Film Rental Rate: ${film.rentalRate}</li>
				<li>Film Length: ${film.length}</li>
				<li>Film Replacement Cost: ${film.replacementCost}</li>
				<li>Film Rating: ${film.rating}</li>
				<li>Film Special Features: ${film.specialFeatures}</li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No Films found</p>
		</c:otherwise>
	</c:choose>
	
</body>
</html>