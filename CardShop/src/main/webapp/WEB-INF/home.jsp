<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Card Shop</title>

<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>

<h1>Welcome to the CardShop</h1>
<form action="showCard.do" method="POST">
		<label for="cardId">Enter the ID to search by: </label> <br> <input
			type="number" name="cardId"> <br>
		<button>Get Card</button>
	</form>

<a href="showCard.do">View the cards in the current collection</a>
<br>
<a href="createcard.html">Add your own card to the collection</a>

</body>
</html>