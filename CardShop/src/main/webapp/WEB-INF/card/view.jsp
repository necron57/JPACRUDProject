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
<br>
<div class="container-fluid">
	<c:choose>
		<c:when test="${not empty cardList }">
			<c:forEach var="card" items="${cardList }">
				<table>
		<thead>
		<tr>
		<th rowspan="2">Card id:</th>
		<th rowspan="2">Monster name:</th>
		<th rowspan="2">Monster level:</th>
		<th rowspan="2">Monster attribute:</th>
		<th rowspan="2">Monster type:</th>
		<th rowspan="2">Description:</th>
		<th rowspan="2">Attack</th>
		<th rowspan="2">Defense</th>
		<th rowspan="2">Image</th>
		
		</tr>
		</thead>
		<tbody>
		<tr>
		<td>${card.id }</td>
		<td>${card.name }</td>
		<td>${card.starLevel }</td>
		<td>${card.monsterAttribute }</td>
		<td>${card.monsterType }</td>
		<td>${card.cardDescription }</td>
		<td>${card.attack }</td>
		<td>${card.defense }</td>
		<td><img alt="${card.name }" src="${card.imageUrl }" width="300"
					height="300"> </td>
		</tr>
		</tbody>
		</table>
				<br>
			<div class="form-floating mb-3"> 
				
						<form action="updateCard.do" method="POST">
			<input type="hidden" name="cardId" value="${card.id }">
			<label for="name">Enter in the new Name:</label> <input
					type="text" class="form-control" name="name" value="${card.name }"><br>
			
			<label for="starLevel">Enter in the new Star Level:</label> <input
					type="number" class="form-control" name="starLevel" value="${card.starLevel }"><br>
			
			<label for="monsterAttribute">Enter in the new attribute:</label> <input
					type="text" class="form-control" name="monsterAttribute" value="${card.monsterAttribute }"><br>
					
			<label for="monsterType">Enter in the new Type:</label> <input
					type="text" class="form-control" name="monsterType" value="${card.monsterType }"><br>
			
			<label for="cardDescription">Enter in the new Description:</label> <input
					type="text" class="form-control" name="cardDescription" value="${card.cardDescription }"><br>
					
			<label for="attack">Enter in the new Attack:</label> <input
					type="number" class="form-control" id="attack" name="attack" value="${card.attack }"><br>
					
			<label for="defense">Enter in the new Defense:</label> <input
					type="number" class="form-control" id="defense" name="defense" value="${card.defense }"><br>
					<label for="imageUrl">Enter in the new Defense:</label> <input
					type="text" class="form-control" id="imageUrl" name="imageUrl" value="${card.imageUrl }">
						<br><button class="btn btn-primary">Update card</button>
			<br>
			</form>
			</div>
				<form action="deleteCard.do" method="POST">
			<input type="hidden" name="cardId" value="${card.id }">
			<button class="btn btn-primary">Banish this card to
				the shadow realm</button>
			</form>
			
			<br>

			</c:forEach>
		</c:when>
	</c:choose>
	
	<br>
	
	<c:choose>
		<c:when test="${not empty card }">
		<table>
		<thead>
		<tr>
		<th rowspan="2">Card id:</th>
		<th rowspan="2">Monster name:</th>
		<th rowspan="2">Monster level:</th>
		<th rowspan="2">Monster attribute:</th>
		<th rowspan="2">Monster type:</th>
		<th rowspan="2">Description:</th>
		<th rowspan="2">Attack</th>
		<th rowspan="2">Defense</th>
		<th rowspan="2">Image</th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td>${card.id }</td>
		<td>${card.name }</td>
		<td>${card.starLevel }</td>
		<td>${card.monsterAttribute }</td>
		<td>${card.monsterType }</td>
		<td>${card.cardDescription }</td>
		<td>${card.attack }</td>
		<td>${card.defense }</td>
			<td><img alt="${card.name }" src="${card.imageUrl }" width="300"
					height="300"> </td>
		</tr>
		</tbody>
		</table>
	

			<br>
		

			<div class="form-floating mb-3"> 
				
						<form action="updateCard.do" method="POST">
			<input type="hidden" name="cardId" value="${card.id }">
			<label for="name">Enter in the new Name:</label> <input
					type="text" class="form-control" name="name" value="${card.name }"><br>
			
			<label for="starLevel">Enter in the new Star Level:</label> <input
					type="number" class="form-control" name="starLevel" value="${card.starLevel }"><br>
			
			<label for="monsterAttribute">Enter in the new attribute:</label> <input
					type="text" class="form-control" name="monsterAttribute" value="${card.monsterAttribute }"><br>
					
			<label for="monsterType">Enter in the new Type:</label> <input
					type="text" class="form-control" name="monsterType" value="${card.monsterType }"><br>
			
			<label for="cardDescription">Enter in the new Description:</label> <input
					type="text" class="form-control" name="cardDescription" value="${card.cardDescription }"><br>
					
			<label for="attack">Enter in the new Attack:</label> <input
					type="number" class="form-control" id="attack" name="attack" value="${card.attack }"><br>
					
			<label for="defense">Enter in the new Defense:</label> <input
					type="number" class="form-control" id="defense" name="defense" value="${card.defense }">
						<br>
						<label for="imageUrl">Enter in the new Defense:</label> <input
					type="text" class="form-control" id="imageUrl" name="imageUrl" value="${card.imageUrl }">
						<br><button class="btn btn-primary">Update card</button>
			<br>
			</form>
			</div>
				<form action="deleteCard.do" method="POST">
			<input type="hidden" name="cardId" value="${card.id }">
			<button class="btn btn-primary">Banish this card to
				the shadow realm</button>
			</form>
			
			<br>
		
		</c:when>


	</c:choose>
<jsp:include page="../bootstrapFoot.jsp" />
</div>
</body>
</html>