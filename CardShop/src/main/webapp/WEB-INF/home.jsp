<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Card Shop</title>
</head>
<body>

<h1>Welcome to the CardShop</h1>
<c:forEach var="card" items="${cardList }">
<li>${card.name }</li>

</c:forEach>


</body>
</html>