<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>
	<h2>The result is : ${result}</h2>
	<div>
		<c:if test="${msg != null}">
			<div class="alert alert-warning">
				<strong>Error!</strong> Problem d'athentification le code ou le mot
				de passe incorrect.
			</div>
		</c:if>
	</div>

</body>
</html>