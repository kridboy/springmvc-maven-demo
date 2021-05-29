<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="h-100">
<head>
    <title>Customer List</title>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/bootstrap5/css/bootstrap.css">
</head>
<body class="d-flex h-100 justify-content-center text-white bg-dark">
<div id="wrapper">
    <div id="content">
        <table class="table text-white">
            <tr>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Email</th>
            </tr>
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
