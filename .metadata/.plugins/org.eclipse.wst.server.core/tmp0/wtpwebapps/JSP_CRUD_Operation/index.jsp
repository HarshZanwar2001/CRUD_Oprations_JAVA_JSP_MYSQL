<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD</title>

<style type="text/css">
    #heading {
        background-color: green;
        text-align: center;
        color: white;
        padding: 10px;
    }
    
    .button-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 20px;
        gap: 10px; /* Space between buttons */
    }

    #btnhome {
        background-color: red;
        border: 2px solid black;
        border-radius: 5px;
        text-align: center;
        display: inline-block;
        align-content: center;
        width: 200px;
        height: 40px;
        line-height: 40px; /* Vertically center text inside the button */
    }

    #btnhome a {
        color: white;
        text-decoration: none;
        font-weight: bold;
        font-size: 16px;
    }

    #btnhome a:hover {
        color: yellow;
    }
</style>
</head>
<body>
<!-- CRUD(Create Read Update Delete) -->
<div id="heading">
    <h1>EMPLOYEE CRUD Operation JSP</h1>
</div>
<hr>
<div class="button-container">
    <div id="btnhome">
        <a href="viewEmployees.jsp">View Employees</a>
    </div>
    <div id="btnhome">
        <a href="addEmployee.jsp">Add Employee</a>
    </div>
</div>
</body>
</html>
