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
<div class="container card">
	<c:choose>
		<c:when test="${not empty cardList }">
			<c:forEach var="card" items="${cardList }">
				<li>${card.name }</li>
				<li>${card.starLevel }</li>
				<li>${card.monsterAttribute }</li>
				<li>${card.monsterType }</li>
				<li>${card.cardDescription }</li>
				<li>Attack/${card.attack }</li>
				<li>Attack/${card.defense }</li>
				<br>
			
				
						<form action="updateCard.do" method="POST">
			<input type="hidden" name="cardId" value="${card.id }">
			<label for="name">Enter in the new Name:</label> <input
					type="text" name="name" value="${card.name }"><br>
			
			<label for="starLevel">Enter in the new Star Level:</label> <input
					type="number" name="starLevel" value="${card.starLevel }"><br>
			
			<label for="monsterAttribute">Enter in the new attribute:</label> <input
					type="text" name="monsterAttribute" value="${card.monsterAttribute }"><br>
					
			<label for="monsterType">Enter in the new Type:</label> <input
					type="text"  name="monsterType" value="${card.monsterType }"><br>
			
			<label for="cardDescription">Enter in the new Description:</label> <input
					type="text"  name="cardDescription" value="${card.cardDescription }"><br>
					
			<label for="attack">Enter in the new Attack:</label> <input
					type="number" id="attack" name="attack" value="${card.attack }"><br>
					
			<label for="defense">Enter in the new Defense:</label> <input
					type="number" id="defense" name="defense" value="${card.defense }">
						<br><button>Update card</button>
			<br>
			</form>
				<form action="deleteCard.do" method="POST">
			<input type="hidden" name="cardId" value="${card.id }">
			<button>Banish this card to
				the shadow realm</button>
			</form>
			
			<br>

			</c:forEach>
		</c:when>
	</c:choose>
	<form action="showCard.do" method="POST">
		<label for="cardId">Enter the ID to search by: </label> <br> <input
			type="number" name="cardId"> <br>
		<button>Get Card</button>
	</form>
	
	<br>
	
	<c:choose>
		<c:when test="${not empty card }">
			<li>${card.name }</li>
			<li>${card.starLevel }</li>
			<li>${card.monsterAttribute }</li>
			<li>${card.monsterType }</li>
			<li>${card.cardDescription }</li>
			<li>Attack/${card.attack }</li>
			<li>Attack/${card.defense }</li>

			<br>
		

			<form action="updateCard.do" method="POST">
			<input type="hidden" name="cardId" value="${card.id }">
			<label for="name">Enter in the new Name:</label> <input
					type="text" name="name" value="${card.name }"><br>
			
			<label for="starLevel">Enter in the new Star Level:</label> <input
					type="number" name="starLevel" value="${card.starLevel }"><br>
			
			<label for="monsterAttribute">Enter in the new attribute:</label> <input
					type="text" name="monsterAttribute" value="${card.monsterAttribute }"><br>
					
			<label for="monsterType">Enter in the new Type:</label> <input
					type="text"  name="monsterType" value="${card.monsterType }"><br>
			
			<label for="cardDescription">Enter in the new Description:</label> <input
					type="text"  name="cardDescription" value="${card.cardDescription }"><br>
					
			<label for="attack">Enter in the new Attack:</label> <input
					type="number" id="attack" name="attack" value="${card.attack }"><br>
					
			<label for="defense">Enter in the new Defense:</label> <input
					type="number" id="defense" name="defense" value="${card.defense }">
					<br><button>Update card</button>
			<br>
			</form>
				<form action="deleteCard.do" method="POST">
			<input type="hidden" name="cardId" value="${card.id }">
			<button>Banish this card to
				the shadow realm</button>
			</form>
			
			<br>
		
		</c:when>


	</c:choose>
<form action="home.do">
		<button>Home</button>
	</form>
	<br>
	<form action="showCard.do">
<button>View the cards in the current collection</button>
</form><br>
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
</div>
</body>
</html>