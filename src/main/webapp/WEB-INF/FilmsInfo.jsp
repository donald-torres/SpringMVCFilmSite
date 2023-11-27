<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Film Keyword</title>
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
			<table
				class="table table-dark table-striped table-hover table-bordered border-secondary">
				<thead class="opacity-75">
					<tr>
						<th scope="col">Film</th>
						<th scope="col">Description</th>
					</tr>
				</thead>
				<c:forEach items="${film}" var="film">
					<tbody class="table-group-divider opacity-75">
						<tr>
							<td class="col-sm-4"><a href="findById.do"
								class="fw-bolder fs-5 link-underline-warning link-offset-2 link-underline-opacity-75 link-underline-opacity-100-hover"
								onclick="location.href=this.href+'?filmId='+'${film.id}';return false;">${film.title}</a></td>
							<td class="col-sm-8 fw-bolder">${film.description}.</td>
						</tr>
					</tbody>
				</c:forEach>
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