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
	<form action="home.do">
		<button>Home</button>
	</form>
	<form action="createCard.do"><button>create your own card</button></form>
	<form action="showCard.do">
<button>View the cards in the current collection</button>
</form>
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

</body>
</html>