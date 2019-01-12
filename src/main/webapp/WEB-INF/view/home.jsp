<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCUMENT html>
<html xmlns:form="http://www.w3.org/1999/html">
<head>
    <title>Big Company Home Page</title>
</head>
<body>
    <h2>Big Company Home Page</h2>
    <hr>
    <p>Welcome to Big Company home page!</p>


    <!-- Add a link for managers -->
    <security:authorize access="hasRole('MANAGER')" >
        <p>
            <a href="${pageContext.request.contextPath}/leaders">Leadership meeting</a>
            (Only for managers)
        </p>
    </security:authorize>

    <!-- Add a link to /systems . Only for admins -->
    <security:authorize access="hasRole('ADMIN')" >
        <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems meeting</a>
            (Only for admins)
        </p>
    </security:authorize>


    <!-- Logout button -->
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">
        <input type="submit" value="Logout">
    </form:form>

    <hr>
    <!-- Display username and role -->
        User : <security:authentication property="principal.username" />
    <br/><br/>
        Role(s) : <security:authentication property="principal.authorities" />
    <hr>

</body>
</html>