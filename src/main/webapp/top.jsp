<%--
  Created by IntelliJ IDEA.
  User: danyang
  Date: 2019-02-23
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- This is a framework for all forms and hyperlink -->
    <base target="main">
    <title>My JSP 'top.jsp' starting page</title>
</head>
<body style="text-align: center;">
<h1> Customer Management System</h1>
<a href="<c:url value='/add.jsp'/>"> Add Customer</a>
<a href="<c:url value='./controller/CustomerServlet?method=findAll'/>"> Search Customer</a>
<a href="<c:url value='/query.jsp'/>"> Advanced Search </a>

</body>
</html>
