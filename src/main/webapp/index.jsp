
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <style>
        body {
            background-color: #b6e3e9;
            font-family: 'Press Start 2P', cursive;
            font-size: 20px;
<<<<<<< HEAD
            margin-top: 25px;
            background-image: url('/img/retro_wallpaper.jpeg');
=======
            background-image: url('/img/retro_wallpaper.jpeg');
            background-position: center top 25px;
>>>>>>> 8c1af0bf2879400b716312654446e8f853d4abe1
            background-repeat: no-repeat;
            background-size: cover;
        }
        h1 {
            text-align: center;
            color: #f26b6b;
            margin-top: 50px;
            margin-bottom: 30px;
        }
<<<<<<< HEAD
        /*.container {*/
        /*    margin: 0 auto;*/
        /*    width: 50%;*/
        /*    text-align: center;*/
        /*}*/
=======
>>>>>>> 8c1af0bf2879400b716312654446e8f853d4abe1
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<<<<<<< HEAD
<%--<div class="container">--%>
<%--    <h1>Welcome to GamesLister</h1>--%>
<%--</div>--%>
=======
>>>>>>> 8c1af0bf2879400b716312654446e8f853d4abe1
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