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
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 50%;
  margin-top: 2rem;
}

td, th {
  border: 1px solid #000;
  text-align: left;
  padding: 8px;

}

td:last-child {
  display:flex;
  align-items: center;
  justify-content: space-around;
}

button {
	cursor: pointer;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

a {
margin-right: 1rem;
}
</style>
<meta charset="UTF-8">
<title>Book Club</title>
</head>
<body>

	<div class="container">
		<h1>Welcome, <c:out value="${user.userName}"/></h1>
		
		<h3>Books from everyone shelves:</h3>
		<a href="/logout">Logout</a>
		<a href="/addPage">Add to my shelf</a>
		
		<table class="table">
		
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Author Name</th>
				<th>Posted By</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="book" items="${books}">
			
				<tr>
					<td><c:out value="${book.id}"/></td>
					<td><a href="books/${book.id}"><c:out value="${book.title}"/></a></td>
					<td><c:out value="${book.author}"/></td>
					<td><c:out value="${book.user.userName}"/></td>
					<td>
						<a href="/books/${book.id}/edit"><button>Edit</button></a>
						<p>|</p>
						<form action="/books/${book.id}/delete" method="post">
							<input type="hidden" name="_method" value="delete"/>
							<button>Delete</button>
						</form>
					</td>
				</tr>
			</c:forEach>
		
		</table>
	</div>

</body>
</html>