<%@page import="com.app.Dao.EmployeeDao, com.app.bean.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Employee</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border: 2px solid black;
        }
        .form-header {
            background: #007bff;
            color: #fff;
            padding: 15px;
            border-radius: 8px 8px 0 0;
            text-align: center;
        }
    </style>
</head>
<body>
    <% 
        int id = Integer.parseInt(request.getParameter("id"));
        Employee e = EmployeeDao.getEmployeeId(id);
    %>
    <div class="container">
        <div class="form-container">
            <div class="form-header">
                <h3>Edit Employee</h3>
            </div>
            <form action="editEmp.jsp" method="post" class="p-3">
                <input type="hidden" name="id" value="<%= e.getId() %>">
                <div class="mb-3">
                    <label for="name" class="form-label">Name:</label>
                    <input type="text" name="name" id="name" class="form-control" value="<%= e.getName() %>" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" name="password" id="password" class="form-control" value="<%= e.getPassword() %>" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email-Id:</label>
                    <input type="email" name="email" id="email" class="form-control" value="<%= e.getEmail() %>" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Gender:</label>
                    <div class="form-check">
                        <input type="radio" name="gender" value="Male" id="male" class="form-check-input" 
                               <%= e.getGender().equalsIgnoreCase("male") ? "checked" : "" %> required>
                        <label for="male" class="form-check-label">Male</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" name="gender" value="Female" id="female" class="form-check-input" 
                               <%= e.getGender().equalsIgnoreCase("female") ? "checked" : "" %>>
                        <label for="female" class="form-check-label">Female</label>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="country" class="form-label">Country:</label>
                    <select name="country" id="country" class="form-select" required>
                        <option <%= e.getCountry().equals("India") ? "selected" : "" %>>India</option>
                        <option <%= e.getCountry().equals("USA") ? "selected" : "" %>>USA</option>
                        <option <%= e.getCountry().equals("France") ? "selected" : "" %>>France</option>
                        <option <%= e.getCountry().equals("Germany") ? "selected" : "" %>>Germany</option>
                        <option <%= e.getCountry().equals("Other") ? "selected" : "" %>>Other</option>
                    </select>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                </div>
            </form>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
