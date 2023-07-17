<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Card Shop</title>

<jsp:include page="bootstrapHead.jsp" />

</head>
<body>
<jsp:include page="navBar.jsp"/>
	<div class="container-fluid"">
		<h1>Welcome to the CardShop</h1>
		
		<br>
		<form action="showCard.do" method="GET">
			<button class="btn btn-primary">View the cards in the current collection</button>
		</form>
		<br>
		<form action="createCard.do">
			<button class="btn btn-primary">Summon your own card to the collection</button>
		</form>
	</div>
	
</body>
</html>