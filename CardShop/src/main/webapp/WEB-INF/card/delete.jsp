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
	<div class="container-fluid">
		<form action="showCard.do">
			<button>View the cards in the current collection</button>
		</form>


		<c:choose>
			<c:when test="${card ne true }">
				<h2>Card has been BANISHED</h2>
			</c:when>
			<c:otherwise>
				<h2>Card cannot be BANISHED please try again</h2>
			</c:otherwise>

		</c:choose>

	</div>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>