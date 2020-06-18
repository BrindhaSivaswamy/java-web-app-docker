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
		<br>
		<br>
		<br>
		<h1>CI/CD PIPELINE POC</h1>
		<br>
		<br>
	</div>
</div>

<div class="container">

	<div class="row">
		<div class="col-md-10">
			<h2>Web App deployed through Jenkins/Docker Pipeline</h2>
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
