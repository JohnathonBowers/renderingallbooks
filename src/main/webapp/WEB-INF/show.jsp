<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Reading Books</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container col-lg-4">
		<div class="row mt-4 text-center">
			<h1><c:out value="${book.title}"></c:out></h1>			
		</div>
		<div class="row">
			<table class="table table-hover text-left">
				<thead>
					<tr>
						<th>Description</th>
						<th>Language</th>
						<th>Pages</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><c:out value="${book.description}"></c:out></td>
						<td><c:out value="${book.language}"></c:out></td>
						<td><c:out value="${book.numberOfPages}"></c:out></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>