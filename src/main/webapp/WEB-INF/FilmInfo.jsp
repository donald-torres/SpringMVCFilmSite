<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Selected Film</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<style>
body {
	background-image:
		url('https://i.pinimg.com/564x/02/f1/68/02f1681d3ac626cd1e054dc982c41661.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
	<a href="home.do"><button type="button" class="btn btn-warning">Return
			to Home</button></a>
	<a href=" javascript: history.back()"><button type="button"
			class="btn btn-warning">Go back</button></a>
	<br />
	<c:choose>
		<c:when test="${! empty film}">
			<table class="table">
				<tbody class="opacity-75">
					<tr>
						<th scope="row">Film ID</th>
						<td>${film.id}</td>
					</tr>
					<tr>
						<th scope="row">Film Title</th>
						<td>${film.title}</td>
					</tr>
					<tr>
						<th scope="row">Film Language</th>
						<td>${film.language}</td>
					</tr>
					<tr>
						<th scope="row">Film Description</th>
						<td>${film.description}</td>
					</tr>
					<tr>
						<th scope="row">Film Release Year</th>
						<td>${film.releaseYear}</td>
					</tr>
					<tr>
						<th scope="row">Film Rental Duration</th>
						<td>${film.rentalDuration}days</td>
					</tr>
					<tr>
						<th scope="row">Film Rental Rate</th>
						<td>$${film.rentalRate}</td>
					</tr>
					<tr>
						<th scope="row">Film Length</th>
						<td>${film.length}minutes</td>
					</tr>
					<tr>
						<th scope="row">Film Replacement Cost</th>
						<td>$${film.replacementCost}</td>
					</tr>
					<tr>
						<th scope="row">Film Rating</th>
						<td>${film.rating}</td>
					</tr>
					<tr>
						<th scope="row">Film Special Features</th>
						<td>${film.specialFeatures}</td>
					</tr>
					<tr>
						<th scope="row">Actors in Film</th>
						<td><c:forEach var="actor" items="${film.actors}">
								<p>${actor}</p>
							</c:forEach></td>
					</tr>
				</tbody>
			</table>

		</c:when>
		<c:otherwise>
			<p>No Films found</p>
		</c:otherwise>
	</c:choose>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>