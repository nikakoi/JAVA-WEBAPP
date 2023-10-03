<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 10/3/2023
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="dbConnection.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<%
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
%>

<c:set var="firstName" value="<%=firstName%>"/>
<c:set var="lastName" value="<%=lastName%>"/>
<sql:update dataSource="${db}" var="table">
    INSERT INTO STUDENTS (FIRST_NAME, LAST_NAME) VALUES (?, ?)
    <sql:param value="${firstName}" />
    <sql:param value="${lastName}" />
</sql:update>

<a href="./index.jsp">Home</a>

</body>
</html>