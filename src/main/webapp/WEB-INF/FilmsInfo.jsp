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
	<a href="home.do">Return to Home</a>
	<br />
	<a href="javascript: history.back()">Go back</a>
	<br />
	<c:choose>
		<c:when test="${! empty film}">
			<c:forEach items="${film}" var="film">
				<ul>
					<li><a href="findById.do"
						onclick="location.href=this.href+'?filmId='+'${film.id}';return false;">Film
							Title: ${film.title}</a></li>
					<li>Film Description: ${film.description}.</li>
				</ul>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<p>No Films found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>