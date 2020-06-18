<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Maven + Spring MVC</title>

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Welcome!</a>
		</div>
	</div>
</nav>

<div class="jumbotron">
	<div class="container">
		<h1>CI/CD Pipeline POC</h1>
		<br>
		<p>
			<c:if test="${not empty msg}">
				Hello ${msg}
			</c:if>
			<br>
			<c:if test="${empty msg}"></c:if>
			<br>
	</div>
</div>

<div class="container">

	<div class="row">
		<div class="col-md-8">
			<h2>Jenkins Docker Pipeline Example</h2>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
		</div>	
	</div>


	<hr>
	<footer>
		<p>Brindha S</p>
	</footer>
</div>

<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>
