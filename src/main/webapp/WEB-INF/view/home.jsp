<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCUMENT html>
<html xmlns:form="http://www.w3.org/1999/html">
<head>
    <title>Big Company Home Page</title>
</head>
<body>
    <h2>Big Company Home Page</h2>
    <hr>
    <p>Welcome to Big Company home page!</p>

    <!-- Logout button -->
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">
        <input type="submit" value="Logout">
    </form:form>
</body>
</html>