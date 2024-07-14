<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Information Form</title>
<style>
body {
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: flex-start;
	height: 100vh;
	margin: 0;
	background-color: #f0f0f0;
}

.form-container {
	margin-top: 50px;
	background-color: #fff;
	padding: 20px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
	width: 300px;
	text-align: center;
}

.form-container h2 {
	margin-bottom: 20px;
}

.form-container input[type="text"], .form-container input[type="submit"]
	{
	width: calc(100% - 20px);
	padding: 10px;
	margin: 10px 0;
	border-radius: 5px;
	border: 1px solid #ccc;
}

.form-container input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	border: none;
	cursor: pointer;
}

.form-container input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="form-container">
		<h2>Student Information</h2>
		<form action="${pageContext.request.contextPath}/student/add" method="post">
			<input type="text" name="sid" placeholder="Student ID"
				required> <input type="text" name="sname" placeholder="Name"
				required> <input type="text" name="sclass"
				placeholder="Class" required> <input type="submit"
				value="Submit">
		</form>
	</div>
</body>
</html>
