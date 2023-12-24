<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Dash board</title>

    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.min.css">

</head>
<body>
	 <h2>Employee Management - Diamond Pvt Ltd</h2>
	 
	<a href="${pageContext.request.contextPath}/add"><h3>Create Employee</h3></a>
    <a href="${pageContext.request.contextPath}/list"><h3>View Employee</h3></a>   

	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/dataTables.bootstrap4.min.js"></script>
</body>
</html>