<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 10/3/2023
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<style>

  body {
    font-family: Arial, sans-serif;
  }

  ul {
    list-style: none;
    padding: 0;
    margin: 20px 0;
  }

  li {
    margin-bottom: 10px;
  }

  a {
    background-color: skyblue;
    color: white;
    padding: 8px 12px;
    text-decoration: none;
    border-radius: 4px;
  }

  a:hover {
    background-color: green;
  }

</style>

<body>

<%
  String firstName = request.getParameter("first_name");
  String lastName = request.getParameter("last_name");
%>

<ul>
  <li><%= firstName %></li>
  <li><%= lastName %></li>
</ul>

<a href="./saveRecord.jsp?first_name=<%=firstName%>&last_name=<%=lastName%>">save</a>

</body>
</html>
