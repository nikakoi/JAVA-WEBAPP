<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="dbConnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>

<style>

    table {
        width: 100%;
    }

    th, td {
        padding: 5px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #f2f2f2;
    }

    a {
        color: skyblue;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

</style>

<body>

<sql:query var="rs" dataSource="${db}">
    SELECT * FROM STUDENTS;
</sql:query>

<a href="./addRecord.jsp">Add student</a>

<table>

    <tr>
        <th>ID</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Action</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${rs.rows}" var="student">
        <tr>
            <td>${student.id}</td>
            <td>${student.first_name}</td>
            <td>${student.last_name}</td>
            <td><a href="./updateRecord.jsp?id=${student.id}">Update</a></td>
            <td><a href="./deleteRecord.jsp?id=${student.id}">Delete</a></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>