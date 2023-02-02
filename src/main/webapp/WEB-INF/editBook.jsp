<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- c:out, c:forEach, etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- For formatting Dates -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!-- For rendering errors on PUT Routes -->
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<style>	
.container {
	height: 15rem;
	width: 25rem;
	display: flex;
	align-items: flex-start;
	justify-content: center;
	flex-direction: column;
	
}
.form-row {
	width: 16rem;
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 1rem;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Edit Book:</h1>
	<div class="container">
		<form:form action="/books/${book.id}/update" method="post" modelAttribute="book">
    		<input type="hidden" name="_method" value="put">
    		<div class="form-row">
				<form:label path="title">Title:</form:label>
				<form:input path="title" />
				<form:errors path="title" />
			</div>
			<div class="form-row">
				<form:label path="author">Author:</form:label>
				<form:input path="author" />
				<form:errors path="author" />
			</div>
			<div class="form-row">
				<form:label path="thoughts">Thoughts:</form:label>
				<form:textarea path="thoughts" />
				<form:errors path="thoughts" />
			</div>
			<div class="form-row">
				<form:input type="hidden" path="user" value="${user.id}" class="form-control"/>
				<form:errors path="user" class="error"/>
			</div>
			<button>Submit</button>
		</form:form>
	</div>
</body>
</html>