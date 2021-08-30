<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<title>Invoice Management System Home Page</title>
</head>

<body>
	<h2>Invoice Management System Home Page</h2>
	<hr>

	<hr>
	<p>
		User:
		<security:authentication property="principal.username" />
		<br><br>
		Role(s):
		<security:authentication property="principal.authorities" />
	</p>
	<hr>

	<p>Welcome to the Invoice Management System Home Page!</p>

	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">

		<button type="submit">Logout</button>

	</form:form>

</body>

</html>