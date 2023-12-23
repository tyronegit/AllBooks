<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%-- <c:out value="SomeVariable"/> --%>
<c:out value="${book.id}"/>
<c:out value="${book.title}"/>
<c:out value="${book.language}"/>
<c:out value="${book.numberOfPages}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New JSP</title>
</head>
<body>

	<div class="container">
	
		<h1>New Book</h1>
		<form:form action="/books" method="post" modelAttribute="book">
			<div>
				<form:label path="title">Title</form:label>
				<form:input path="title"/>			
			</div>
			<div>
				<form:label path="description">Description</form:label>
				<form:textarea path="description"/>			
			</div>
			<div>
				<form:label path="language">Language</form:label>
				<input name="language"/>			
			</div>
			<div>
				<form:label path="numberOfPages">Pages</form:label>
				<input type="number" name="numberOfPages"/>			
			</div>
			<input type="submit" value="Submit"/>		
		</form:form>
	
	</div>

</body>
</html>