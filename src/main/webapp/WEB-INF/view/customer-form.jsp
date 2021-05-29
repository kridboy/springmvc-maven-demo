<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: matthias.keisse
  Date: 29/05/2021
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Customer</title>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/bootstrap5/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/resources/bootstrap5/js/bootstrap.bundle.js"></script>
</head>
<body class="d-flex h-100 justify-content-center text-white bg-dark">
<div class="text-center">
    <form:form action="save" modelAttribute="customer" method="POST">
        <form:hidden path="id" />
        <div class="mb-3">
            <label class="form-label">First name</label>
            <form:input path="firstName" type="text" class="form-control"/>
        </div>
        <div class="mb-3">
            <label class="form-label">Last name</label>
            <form:input path="lastName" class="form-control"/>
        </div>
        <div class="mb-3">
            <label class="form-label">Email address</label>
            <form:input path="email" class="form-control"/>
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-light">Submit</button>
        </div>
    </form:form>
    <p class="p-1 align-content-start"><a href="${pageContext.request.contextPath}/customer/list">Back to list</a></p>
</div>

</body>
</html>
