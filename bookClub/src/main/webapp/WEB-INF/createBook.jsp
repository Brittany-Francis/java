<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!-- for form tag library -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for form validations -->
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Book Entry</title>
<link rel="stylesheet" href="/css/createBook.css"/>
</head>
<body>
<div class="container">

<h1>Add a book to your shelf</h1>
<a href="/books">Back to the shelves</a>
<form:form method="post" modelAttribute="book" action="/createBook">
	<form:input type="hidden" path="user" value="${loggedInUser.id}"></form:input>

	<form:label path="title">Title: </form:label>
	<form:input path="title"></form:input>
	<form:errors path="title"></form:errors>
	
	<form:label path="author">Author: </form:label>
	<form:input path="author"></form:input>
	<form:errors path="author"></form:errors>
	
	<form:label path="thoughts">Thoughts: </form:label>
	<form:textarea path="thoughts" cols="20" rows="5"></form:textarea>
	<form:errors path="thoughts"></form:errors>
	
	<button>Submit</button>


</form:form>

</div>

</body>
</html>