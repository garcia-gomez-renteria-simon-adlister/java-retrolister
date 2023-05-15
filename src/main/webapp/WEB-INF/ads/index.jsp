
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <style>
        body {
            background-color: #ffebcd;
            font-family: 'Press Start 2P', cursive;
            font-size: 20px;
        }
        h1 {
            text-align: center;
            color: #ff69b4;
            margin-top: 50px;
            margin-bottom: 30px;
        }
        .container {
            margin: 0 auto;
            width: 50%;
            text-align: center;
        }
        label {
            color: #6495ed;
        }
        input[type=text], .btn-primary {
            background-color: #f0e6f5;
            border-color: #6495ed;
            color: #6495ed;
        }
        .ad-container {
            margin-bottom: 50px;
            padding-bottom: 20px;
            border-bottom: 2px solid #6495ed;
        }
        .ad-title {
            font-size: 24px;
            color: #ff69b4;
            margin-bottom: 10px;
        }
        .ad-description {
            font-size: 18px;
            color: #6495ed;
        }
        .ad-details {
            margin-top: 10px;
            font-size: 16px;
        }
        .ad-details a {
            display: inline-block;
            padding: 5px 10px;
            background-color: #f0e6f5;
            border: 2px solid #6495ed;
            color: #6495ed;
            text-decoration: none;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Games for Sale!</h1>

    <%-- Add a search bar --%>
    <form action="/ads" method="get">
        <input type="text" name="search" placeholder="Search..." value="${param.search}" />
        <button type="submit" class="btn-primary">Search</button>
    </form>

    <c:if test="${not empty successMessage}">
        <div class="alert alert-success">${successMessage}</div>
    </c:if>

    <c:forEach var="ad" items="${ads}">
        <div class="ad-container">
            <div class="ad-title">${ad.title}</div>
            <div class="ad-description">${ad.description}</div>
            <div class="ad-details">
                <a href="/ads/arbitraryad?id=${ad.id}">Details</a>
                <c:if test="${user != null && user.getId() == ad.getUserId()}">
                    <form action="/ads/delete" method="post" style="display: inline-block;">
                        <input type="hidden" name="id" value="${ad.id}" />
                        <button type="submit">Delete</button>
                    </form>
                </c:if>
            </div>
        </div>
    </c:forEach>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/webfont/1.6.28/webfontloader.js"></script>
<script>
    WebFont.load({
        google: {
            families: ['Press Start 2P']
        }
    });
</script>
</body>
</html>

