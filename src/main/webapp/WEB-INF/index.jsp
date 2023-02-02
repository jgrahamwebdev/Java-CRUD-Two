<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<style>
.main_container {
	width: 100%;
	height: 25rem;
	display: flex;
	align-items: center;
	justify-content: space-evenly;
}
.container {
	height: 25rem;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}
.form-row {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 1rem;
}

.errors {
	color: red;
}
</style>
<meta charset="UTF-8">
<title>Book Club</title>
</head>
<body>
	<h1>Welcome to the Book Club!</h1>

<div class="main_container">


	<div class="container">
		<form:form action="/register" modelAttribute="newUser" class="form">
		
			<h2>Register:</h2>
		
			<div class="form-row">
				<form:label for="userName" path="userName" class="label">Username:</form:label>
				<form:input type="text" path="userName" class="form-control"/>
			 	<form:errors path="userName" class="errors"/>
			</div>
			
			<div class="form-row">
				<form:label for="email" path="email">Email:</form:label>
				<form:input type="text" path="email" class="form-control"/>
				<form:errors path="email" class="errors"/>
			</div>
			
			<div class="form-row">
				<form:label for="password" path="password">Password:</form:label>
				<form:input type="password" path="password" class="form-control"/>
				<form:errors path="password" class="errors"/>
			</div>
			
			<div class="form-row">
				<form:label for="" path="confirm">Confirm:</form:label>
				<form:input type="password" path="confirm" class="form-control"/>
				<form:errors path="confirm" class="errors"/>
			</div>
			
			<div class="form-row">
				<input type="submit" value="Submit"/>
			</div>
			
		</form:form>
	</div>

	<div class="container">
		<form:form action="/login" modelAttribute="newLogin" class="form">
		
			<h2>Log In:</h2>
		
			<div class="form-row">
				<form:label for="email" path="email">Email:</form:label>
				<form:input type="text" path="email" class="form-control"/>
				<form:errors path="email" class="errors"/>
			</div>
			
			<div class="form-row">
				<form:label for="password" path="password">Password:</form:label>
				<form:input type="password" path="password" class="form-control"/>
				<form:errors path="password" class="errors"/>
			</div>
			
			<div class="form-row">
				<input type="submit" value="Submit"/>
			</div>
		
		</form:form>
	</div>

</div>

</body>
</html>