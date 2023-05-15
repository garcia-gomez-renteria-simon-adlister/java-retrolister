

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <style>
        .navbar{
            background-color: #ba84fc;
        }
        body {
            background: linear-gradient(180deg,#e7d4f7,#ba84fc);
            font-family: 'Press Start 2P', cursive;
            font-size: 20px;
        }
        h1 {
            text-align: center;
            color: #ba84fc;
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
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Welcome Player1, ${sessionScope.user.username}!</h1>
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