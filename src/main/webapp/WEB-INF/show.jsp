<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reading Books</title>
<style>
body {
	font-family: Arial, sans-serif;
}

.info-box {
	/* border: 4px solid #ccc; */
	border: 5px solid black;
	border-width: 7px;
	border-style: double;
	width: 50%; /* Set the table width */
	margin: 20px auto; /* Center the table on the page */
	padding: 10px;
	margin-bottom: 15px; /*adjust the margin control spacing*/
	border-radius: 5px;
	
}

h1, p {
	margin: 0; /* Remove default margin */
	text-align: center;
}

h3, p {
	display: inline-block; /* Display elements on the same line */
	padding: 25px;
}

hr {
	margin: 5px 0; /* Adjust the margin above and below the line */
	border: 0;
	border-top: 2px solid #ccc; /* Set the color and style of the line */
}
</style>
</head>
<body>
<a href="/books">my Books</a>
	<div class="info-box">
		<h1>
			<c:out value="${book.title}" />
		</h1>
		<br>
		<hr>

		<h3>Description:</h3>
		<c:out value="${book.description}" />
		<br>
		<hr>
		<h3>Language:</h3>
		<c:out value="${book.language}" />
		<br>
		<hr>
		<h3>Number of pages:</h3>
		<c:out value="${book.numberOfPages}" />
	</div>
</body>
</html>
