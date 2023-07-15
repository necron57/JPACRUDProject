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
				<li>${card.monsterType }</li>
				<li>${card.cardDescription }</li>
				<li>Attack/${card.attack }</li>
				<br>
				<a href="deleteCard.do?cardId=${card.id }">Banish this card to
					the shadow realm</a>
			</c:forEach>
		</c:when>
	</c:choose>
</body>
</html>