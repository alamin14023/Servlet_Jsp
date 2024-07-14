<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Warning</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: flex-start;
	min-height: 100vh;
}

.container {
	width: 80%;
	margin: 20px auto 0;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
}

h1 {
	text-align: center;
	color: #333;
}

.warning-message {
	text-align: center;
	font-size: 18px;
	margin-top: 20px;
}

.error {
	color: #d9534f; /* Red color for error */
}

.info {
	color: #5bc0de; /* Blue color for info */
}

.button-container {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 30px;
}

.button {
	height: 50px;
	line-height: 50px;
	padding: 0 20px;
	background-color: #4CAF50;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 10px;
	cursor: pointer;
	border: 2px solid #4CAF50;
	border-radius: 5px;
	transition: background-color 0.3s, border-color 0.3s;
}

.button:hover {
	background-color: #45a049;
	border-color: #45a049;
}
</style>
</head>
<body>
	<%!String value;
	String warnHeading;%>
	<%
	value = request.getAttribute("warning").toString();
	if (value == "Information added successfully.") {
		warnHeading = "Success!";
	} else {
		warnHeading = "Warning!";
	}
	%>
	<div class="container">
		<h1><%=warnHeading%></h1>
		<div
			class="warning-message ${messageType == 'error' ? 'error' : 'info'}">
			${warning}</div>
		<div class="button-container">
			<a href="${pageContext.request.contextPath}/register.jsp"
				class="button">Go Back</a> <a
				href="${pageContext.request.contextPath}/home.jsp" class="button">Home</a>
		</div>
	</div>
</body>
</html>
