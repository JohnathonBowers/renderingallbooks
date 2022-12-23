<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Read Share</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container col-6">
		<div class="row my-4">
			<h1>All Books</h1>
		</div>
		<div class="row">
			<table class="table table-striped table-hover text-center table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Title</th>
						<th>Language</th>
						<th># of Pages</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="book" items="${allBooks}">
						<tr>
							<td><c:out value="${book.id}"></c:out></td>
							<td><a href="books/${book.id}"><c:out value="${book.title}"></c:out></a></td>
							<td><c:out value="${book.language}"></c:out></td>
							<td><c:out value="${book.numberOfPages}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>