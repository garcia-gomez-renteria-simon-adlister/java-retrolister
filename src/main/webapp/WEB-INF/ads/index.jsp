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
    <h1>Games for Sale!</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
<%--            <form action="/ads/arbitrary" method="get">--%>
                <label for="arbitraryAd">Type in the name of the game you'd like to view"</label>
                <input id="arbitraryAd" name="arbitraryAd" type="text" value="${ad.title}">
                <a href="/ads/arbitraryad?id=${ad.id}&user_id=${ad.user_id}" class="btn btn-primary">Click to view game details!</a>
<%--            </form>--%>
            <form action="/ads/create" method="get">
                <a href=""></a>
            </form>
        </div>
    </c:forEach>
</div>
</body>
</html>
