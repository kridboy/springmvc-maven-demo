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
    <div id="content" class="pt-5">
        <h1 class="pb-5 display-1 align-content-center">Customer Data</h1>
        <table class="table table-striped table-dark">
            <thead class="">
            <tr>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Email</th>
            </tr>
            </thead>
            <c:forEach var="tempcustomer" items="${customers}">
                <tr>
                    <td>${tempcustomer.firstName}</td>
                    <td>${tempcustomer.lastName}</td>
                    <td>${tempcustomer.email}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
