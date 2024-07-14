<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: flex-start; /* Align items to the top */
    min-height: 100vh;
}

.container {
    width: 80%;
    margin: 20px auto 0; /* Reduced margin-top */
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px; /* Adding border radius for consistency */
}

h1 {
    text-align: center;
    color: #333;
}

.button-container {
    display: flex;
    justify-content: center;
    align-items: center; /* Align items vertically */
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

.search-form {
    display: flex;
    align-items: center;
}

.search-input {
    height: 50px;
    line-height: 50px;
    padding: 0 10px;
    border: 2px solid #4CAF50;
    border-radius: 5px;
    flex: 1;
}

.search-input:focus {
    outline: none;
    border-color: #45a049;
}

.search-button {
    height: 50px;
    line-height: 50px;
    padding: 0 20px;
    background-color: #4CAF50;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    margin-left: 10px;
    cursor: pointer;
    border: 2px solid #4CAF50;
    border-radius: 5px;
    transition: background-color 0.3s, border-color 0.3s;
}

.search-button:hover {
    background-color: #45a049;
    border-color: #45a049;
}

@media (max-width: 768px) {
    .button-container {
        flex-direction: column;
        align-items: center;
    }
    .search-button {
        margin-left: 0;
        margin-top: 10px;
    }
}
</style>
</head>
<body>
    <div class="container">
        <h1>Student Information System</h1>
        <div class="button-container">
            <a href="${pageContext.request.contextPath}/register.jsp" class="button">Add Student</a> 
            <a href="${pageContext.request.contextPath}/student/show" class="button">Show Students</a> 
            <form action="${pageContext.request.contextPath}/student/search" method="GET" class="search-form">
                <input type="text" name="inputSearch" class="search-input" placeholder="Enter student name or ID">
                <button type="submit" class="search-button">Search</button>
            </form>
        </div>
    </div>
</body>
</html>
