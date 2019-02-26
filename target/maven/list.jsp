<%--
  Created by IntelliJ IDEA.
  User: danyang
  Date: 2019-02-23
  Time: 20:11
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

<h3 align="center" >Customer List</h3>
<table border="1" width="70%" align="center">
    <tr>
        <th>Name</th>
        <th>Gender</th>
        <th>Cell Phone</th>
        <th>Email</th>
        <th>Description</th>
        <th>Operation</th>
    </tr>
    <c:forEach items="${pb.beanList}" var="cstm">
        <tr>
            <td>${cstm.name}</td>
            <td>${cstm.gender}</td>
            <td>${cstm.phone}</td>
            <td>${cstm.email}</td>
            <td>${cstm.description}</td>
            <td>
                <a href="<c:url value='./controller/CustomerServlet?method=preEdit&id=${cstm.id}'/> ">Edit</a>
                <a href="<c:url value='./controller/CustomerServlet?method=deleteCustomer&id=${cstm.id}'/> ">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<br/>
<center>
    Page ${pb.pageCode} / Total ${pb.totalPage}
    <a href="${pb.url}&pc=1">Main</a>
    <c:if test="${pb.pageCode>1}">
        <a href="${pb.url}&pc=${pb.pageCode-1}">Last Page</a>
    </c:if>

    <c:choose>
        <c:when test="${pb.totalPage<=10}">
            <c:set var="begin" value="1"/>
            <c:set var="end" value="${pb.totalPage}"/>
        </c:when>
        <c:otherwise>
            <c:set var="begin" value="${pb.pageCode-5}"/>
            <c:set var="end" value="${pb.pageCode+4}"/>
            &lt;%&ndash;Head Overflow &ndash;%&gt;
            <c:if test="${begin<1}">
                <c:set var="begin" value="1"/>
                <c:set var="end" value="10"/>
            </c:if>
            &lt;%&ndash;Tail Overflow&ndash;%&gt;
            <c:if test="${end>pb.totalPage}">
                <c:set var="end" value="${pb.totalPage}"/>
                <c:set var="begin" value="${pb.totalPage-9}"/>
            </c:if>
        </c:otherwise>
    </c:choose>

    <%--&lt;%&ndash;Loop Page List &ndash;%&gt;--%>
    <c:forEach var="i" begin="${begin}" end="${end}">
        <c:choose>
            <c:when test="${i eq pb.pageCode}">
                [${i}]
            </c:when>
            <c:otherwise>
                <a href="${pb.url}&pc=${i}">[${i}]</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>


    <c:if test="${pb.pageCode<pb.totalPage}">
        <a href="${pb.url}&pc=${pb.pageCode+1}">下一页</a>
    </c:if>
    <a href="${pb.url}&pc=${pb.totalPage}">尾页</a>

</center>
</body>
</html>