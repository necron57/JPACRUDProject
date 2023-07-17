<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <a class="navbar-brand" href="home.do">Front of the shop</a>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" href="showCard.do">List of Cards</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="createCard.do">Summon your own card</a>
        </li>
      </ul>
      <form action="showCard.do" class="d-flex" id="cardSearch" method="POST">
		<label for="cardId">Enter the ID to search by: </label> <br> <input
			type="number" name="cardId"> <br>
		<button>Get Card</button>
	</form>
    </div>
  </div>
</nav>