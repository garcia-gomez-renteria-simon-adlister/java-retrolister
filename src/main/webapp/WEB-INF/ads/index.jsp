<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Here Are all the ads!</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>
<form>
<h1>Search for Items</h1>
    <h1>Welcome to Retrolister!</h1>
    <div class="container">
        <form action="/index" method="post">
            <label for="userName">Username:</label>
            <input type="hidden" id="userName" name="userName">
            <label for="sellerType">Private seller or Dealer?:</label>
            <input type="hidden" id="sellerType" name="sellerType">
            <label for="gameName">Game Name:</label>
            <input type="hidden" id="gameName" name="gameName">
            <label for="price">Price:</label>
            <input type="hidden" id="price" name="price">
            <label for="platform">Platform:</label>
            <input type="hidden" id="platform" name="platform">
            <label for="condition">Conditioin:</label>
            <input type="hidden" id="condition" name="condition">
            <label for="numPlayers">Number of Players:</label>
            <input type="hidden" id="numPlayers" name="numPlayers">
        </form>
    </div>
    <div class="container">
    <label for="searchSelect">Please select which criteria to use
    </label>
        <select id="searchSelect" name="Search Keywords">
            <option value="title">Game Title</option>
            <option value="genre">Genre</option>
            <option value="platform">Gaming System</option>
        </select>
    <button type="submit">Search</button>
    </div>
</form>
</body>
</html>
