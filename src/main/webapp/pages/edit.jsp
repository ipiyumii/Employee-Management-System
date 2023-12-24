<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.min.css">

</head>
<body>
	<div class="container mt-5">
	    <h2>Edit Employee</h2>
	    <form action="edit" method="post">
	        <input type="hidden" name="id" value="${employee.id}">
	        <div class="form-group">
	            <label for="name">Name:</label>
	            <input type="text" class="form-control" id="name" name="name" value="${employee.name}" required>
	        </div>
	        <div class="form-group">
	            <label for="nic">NIC:</label>
	            <input type="text" class="form-control" id="nic" name="nic" value="${employee.nic}" required>
	        </div>
	        <div class="form-group">
	            <label for="designation">Designation:</label>
	            <input type="text" class="form-control" id="designation" name="designation" value="${employee.designation}" required>
	        </div>
	        <div class="form-group">
	            <label for="department">Department:</label>
	            <input type="text" class="form-control" id="department" name="department" value="${employee.department}" required>
	        </div>
	        <div class="form-group">
	            <label for="dateJoined">Date Joined:</label>
	            <input type="date" class="form-control" id="dateJoined" name="dateJoined" value="${employee.dateJoined}" required>
	        </div>
	        <button type="submit" class="btn btn-primary">Update Employee</button>
	    </form>
	</div>

	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap4.min.js"></script>
	
	<script src="js/bootstrap.min.js"></script>
	
</body>
</html>