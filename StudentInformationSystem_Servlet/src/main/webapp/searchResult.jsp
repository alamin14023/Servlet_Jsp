<%@page import="javax.naming.directory.SearchResult"%>
<%@page import="com.student.model.StudentModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Changed to align items to the top */
            min-height: 100vh;
        }

        .container {
            width: 80%;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            margin-top: 20px; /* Reduced margin-top */
        }

        .container h2 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        .container p {
            color: #333;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        @media (max-width: 768px) {
            .container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Search Results</h2>
        <c:choose>
            <c:when test="${not empty searchResult}">
                <table>
                    <thead>
                        <tr>
                            <th>Student ID</th>
                            <th>Name</th>
                            <th>Class</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% StudentModel student = (StudentModel)request.getAttribute("searchResult"); %>
                        <tr>
                           <td><%= student.getsId() %></td>
                           <td><%= student.getsName() %></td>
                           <td><%= student.getsClass() %></td>
                       </tr>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <p>No results found for your search query.</p>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
