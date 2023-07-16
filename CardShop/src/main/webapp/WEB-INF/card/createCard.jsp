<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Card Shop</title>
</head>
<body>
	<form action="createCard.do">
		<label for="name">Enter in the name of the card: </label>
		<input type="text" name="name">
		<br>
		<label for="starLevel">Enter in the Star Level of the card: </label>
		<input type="number" name="starLevel">
		<br>
		<label for="monsterAttribute">Enter in the Attribute of the card: </label>
		<input type="text" name="monsterAttribute">
		<br>
		<label for="monsterType">Enter in the Monster Type of the card: </label>
		<input type="text" name="monsterType">
		<br>
		<label for="cardDescription">Enter in the Description of the card: </label>
		<input type="text" name="cardDescription">
		<br>
		<label for="attack">Enter in the Attack of the card: </label>
		<input type="number" name="attack">
		<br>
		<label for="defense">Enter in the Defense of the card: </label>
		<input type="number" name="defense">
		<br>
		<button>Summon this card</button>
	
	</form>

</body>
</html>