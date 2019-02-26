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
    <title>Title</title>
</head>
<body style="text-align: center;">
<h1> Customer Management System</h1>
<a href="<c:url value='/add.jsp'/>"> Add Customer</a>
<a href="<c:url value='./controller/CustomerServlet?method=findAll'/>"> Search Customer</a>
<a href="<c:url value='/query.jsp'/>"> Advanced Search </a>

<h3 align="center">Advanced Search</h3>
<form action="<c:url value="./controller/CustomerServlet"/>" method="get">
    <input type="hidden" name="method" value="query">
    <table border="0" align="center" width="40%" style="margin-center: 100px">
        <tr>
            <td width="100px">Name</td>
            <td width="40%">
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <select name="gender">
                    <option value="">==Select Gender==</option>
                    <option value="male">male</option>
                    <option value="female">female</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Cell Phone</td>
            <td>
                <input type="text" name="phone"/>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <input type="text" name="email"/>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>

                <input type="submit" value="Search"/>
                <input type="reset" value="Reset"/>
            </td>
        </tr>

    </table>
</form>
</body>
</html>
