

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <style>
        body {
            background-color: #f2c6c6;
            font-family: 'Press Start 2P', cursive;
            font-size: 20px;
        }
        h1 {
            text-align: center;
            color: #f26b6b;
            margin-top: 50px;
            margin-bottom: 30px;
        }
        .container {
            margin: 0 auto;
            width: 50%;
            text-align: center;
        }
        input[type="text"], input[type="password"] {
            background-color: #fffcf5;
            border: none;
            border-radius: 5px;
            padding: 5px;
            margin-bottom: 10px;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #f26b6b;
            border: none;
            border-radius: 5px;
            padding: 10px;
            color: #fff;
            font-size: 18px;
            cursor: pointer;
            margin-top: 20px;
        }
        input[type="submit"]:hover {
            background-color: #f24949;
        }
        label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: #f24949;
            font-size: 18px;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Please Log In</h1>
    <form action="/login" method="POST">
        <div class="form-group">
            <label for="username">Player Name:</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" value="Log In">
    </form>
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