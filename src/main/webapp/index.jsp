<!doctype html>
<html lang="en" class="h-100">
<head>
    <title>Cover Template · Bootstrap v5.0</title>
    <!-- Bootstrap core CSS&JS -->
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/bootstrap5/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/resources/bootstrap5/js/bootstrap.bundle.js"></script>
    <!-- Custom styles for this template -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cover.css">
</head>
<body class="d-flex h-100 text-center text-white bg-dark">

<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="mb-auto">
        <div>
            <h3 class="align-content-center">Cover</h3>
        </div>
    </header>

    <main class="px-3">
        <h1>Spring MVC CRM demo</h1>
        <p class="lead">
            <a href="customer/list" class="btn btn-lg btn-secondary fw-bold border-white bg-white">Go to CRM</a>
        </p>
    </main>

    <footer class="mt-auto text-white-50">
        <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a
                href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
    </footer>
</div>
</body>
</html>
