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
	<a href="showCard.do">home</a>


	<c:choose>
	<c:when test="${card ne true }">
		<p>Card has been BANISHED</p>
	</c:when>
		<c:otherwise>
			<p>Card cannot be BANISHED please try again</p>
		</c:otherwise>
		
	</c:choose>



</body>
</html>