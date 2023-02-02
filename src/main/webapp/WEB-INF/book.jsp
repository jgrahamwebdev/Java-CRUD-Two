<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h1><c:out value="${book.title}"/></h1>
		
		<a href="/home">back to shelves</a>
		
		<div class="container">
			<h4>Here are <c:out value="${book.user.userName}"/>'s thoughts on:</h4>
			<p>Title: <c:out value="${book.title}"/></p>
			<hr />
			<p>By: <c:out value="${book.author}"/></p>
			<hr />
			<p>Thoughts: <c:out value="${book.thoughts}"/></p>
			<hr />
		
		</div>
		
	</div>

</body>
</html>