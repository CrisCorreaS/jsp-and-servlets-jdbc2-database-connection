<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="language"
    value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale.language}"
    scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="bundle.language" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script src="https://www.w3schools.com/lib/w3.js"></script>
</head>
<body>
	<!-- Start Content -->
	
	<jsp:include page="cabecera.jsp" flush="true"><jsp:param name="etiquetaTitulo" value="Página de Inicio"/></jsp:include>
		
		<div id="home" class="w3-content">
		<div id="contact" class="w3-container w3-padding-top-32">
		<h2 class="w3-border-bottom w3-border-light-grey w3-padding-16"><fmt:message key="welcome"/></h2>

		<!-- Slides -->
			<img class="slides" src="./img/img_la.jpg" alt="The Band1" style="width:100%">
			<img class="slides" src="./img/img_ch.jpg" alt="The Band2" width="100%">
			<img class="slides" src="./img/img_ny.jpg" alt="The Band3" width="100%">
			<script>
				w3.slideshow(".slides", 1500);
			</script>
		<!-- About -->
		<div id="about" class="w3-container w3-padding-32">
			<h1 class="w3-center"><fmt:message key="theBand"/></h1>
			<p><fmt:message key="bandWebIntro"/></p>
		</div>
		
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
		
		<!-- End Content -->
	</div>
	</div>
</body>
</html>