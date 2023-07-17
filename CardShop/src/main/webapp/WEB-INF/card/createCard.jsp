<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Card Shop</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="../navBar.jsp"/>
<div class="container">
<div class="form-floating mb-3">
	<form action="addCard.do">
		<label for="name">Enter in the name of the card: </label>
		<input type="text" class="form-control" placeholder="name:" name="name">
		<br>
		<label for="starLevel">Enter in the Star Level of the card: </label>
		<input type="number" class="form-control" placeholder="starLevel" name="starLevel">
		<br>
		<label for="monsterAttribute">Enter in the Attribute of the card: </label>
		<input type="text" class="form-control" placeholder="monsterAttribute" name="monsterAttribute">
		<br>
		<label for="monsterType">Enter in the Monster Type of the card: </label>
		<input type="text" class="form-control" placeholder="monsterType" name="monsterType">
		<br>
		<label for="cardDescription">Enter in the Description of the card: </label>
		<input type="text" class="form-control" placeholder="cardDescription" name="cardDescription">
		<br>
		<label for="attack">Enter in the Attack of the card: </label>
		<input type="number" class="form-control" placeholder="attack" name="attack">
		<br>
		<label for="defense">Enter in the Defense of the card: </label>
		<input type="number" class="form-control" placeholder="defense" name="defense">
		<br>
		<label for="imageUrl">Enter in the new Defense:</label> 
		<input type="text" class="form-control" id="imageUrl" name="imageUrl" value="${card.imageUrl }">
		
		<br>
		<button class="btn btn-primary">Summon this card</button>
	
	</form>
</div>
</div>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>