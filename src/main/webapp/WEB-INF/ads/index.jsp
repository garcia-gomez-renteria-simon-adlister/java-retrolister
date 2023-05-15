

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <style>
        .navbar{
            background-color: #ffebcd;
        }
        body {
            background: linear-gradient(180deg,#ffebcd,#ffd79a);

            font-family: 'Press Start 2P', cursive;
            font-size: 20px;
        }
        h1 {
            text-align: center;
            color: #ff69b4;
            margin-top: 50px;
            margin-bottom: 30px;
            transition:.6s;
        }
        h1:before,
        h1:after {
            content:attr(data-text);
            transition:.6s;
        }
        h1:before {
            left: 0;
            top: 0;
            position: absolute;
            z-index:-1;
            text-shadow:
                    0px 0px,
                    0px 0px,
                    0px 0px,
                    0px 0px,
                    0px 0px,
                    0px 0px,
                    0px 0px,
                    0px 0px,
                    0px 0px,
                    0px 0px;
            -webkit-mask:repeating-linear-gradient(45deg, transparent 0 3px, rgba(0,0,0,0.5) 0 6px);
            mask:repeating-linear-gradient(45deg, transparent 0 3px, rgba(0,0,0,0.5) 0 6px);
        }
        h1:hover {
            transform:translate(-10px,-10px);
        }
        h1:hover:before {
            text-shadow:
                    1px 1px,
                    2px 2px,
                    3px 3px,
                    4px 4px,
                    5px 5px,
                    6px 6px,
                    7px 7px,
                    8px 8px,
                    9px 9px,
                    10px 10px;
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