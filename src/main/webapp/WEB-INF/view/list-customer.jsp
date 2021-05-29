<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="h-100">
<head>
    <title>Customer List</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap5/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/resources/bootstrap5/js/bootstrap.bundle.js"></script>
</head>
<body class="d-flex h-100 justify-content-center text-white bg-dark">
<div id="wrapper">
    <div id="content" class="pt-5 align-content-center">
        <h1 class="pb-5 display-1">Customer Data</h1>
        <table class="table table-striped table-dark">
            <thead class="">
            <tr>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Email</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <c:forEach var="tempcustomer" items="${customers}">
                <c:url var="updateLink" value="/customer/showFormUpdate">
                    <c:param name="customerId" value="${tempcustomer.id}" />
                </c:url>
                <c:url var="deleteLink" value="/customer/delete">
                    <c:param name="customerId" value="${tempcustomer.id}" />
                </c:url>

                <tr>
                    <td>${tempcustomer.firstName}</td>
                    <td>${tempcustomer.lastName}</td>
                    <td>${tempcustomer.email}</td>
                    <td>
                        <a href="${updateLink}" class="link-light">Update</a>
                        <span> | </span>
                        <a href="${deleteLink}" class="link-danger" onclick="if (!(confirm('Are you sure you want to delete?'))) return false">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div class="text-center">
            <button type="button" class="btn btn-light mt-5" onclick="window.location.href='showFormAdd'; return false">Create customer</button>
        </div>
    </div>
</div>
</body>
</html>
