<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Student list</title>
</head>

<body>

	<div class="container">

		<h3>Student List</h3>
						<!-- Display the logged-in username -->
			<p align="right">Logged in as: <sec:authentication property="principal.username" /></p>
		<hr>

			<form action="/LibraryManagement/students/list" class="form-inline">

				<!-- Add a button -->
				<a href="/StudentManagement/students/showFormForAdd"
					class="btn btn-primary btn-sm mb-3"> Add Student </a>

			</form>
	
		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Course</th>
					<th>Country</th>
					
					<th>Action</th>
					
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Students}" var="tempStudent">
					<tr>
						
						<td><c:out value="${tempStudent.firstname}" /></td>
						<td><c:out value="${tempStudent.lastname}" /></td>
						<td><c:out value="${tempStudent.course}" /></td>
						<td><c:out value="${tempStudent.country}" /></td>
						
						
						
						<td>
							<!-- Add "update" button/link --> <a
							href="/StudentManagement/students/showFormForUpdate?studentId=${tempStudent.id}"
							class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a href="/StudentManagement/students/delete?studentId=${tempStudent.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this Student Record?'))) return false">
								Delete </a>

						</td>
					

					</tr>
				</c:forEach>

			</tbody>
		</table>
				<a href="/StudentManagement/logout" 
					class="btn btn-primary btn-sm mb-3 mx-auto"> Logout </a> 
	</div>

</body>
</html>



