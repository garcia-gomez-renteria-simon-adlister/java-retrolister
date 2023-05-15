
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <style>
        .navbar{
            background-color: black;

        }
        .nav-link{
            color: dodgerblue;
        }
        body {
            background-color: #b6e3e9;
            font-family: 'Press Start 2P', cursive;
            font-size: 20px;
            background-image: url('/img/retro_wallpaper.jpeg');
            background-position: center top 25px;
            background-repeat: no-repeat;
            background-size: cover;
        }
        h1 {
            text-align: center;
            color: #f26b6b;
            margin-top: 50px;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<%--here is the link for the specific font family https://fonts.google.com/specimen/Press+Start+2P--%>
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