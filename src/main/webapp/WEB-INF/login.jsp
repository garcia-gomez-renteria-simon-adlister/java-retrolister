

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <style>
        .navbar{
            background-color: #f2c6c6;
        }

        body {
            background: linear-gradient(180deg,#f2c6c6,#f26b6b);


            font-family: 'Press Start 2P', cursive;
            font-size: 20px;
        }
        h1 {
            text-align: center;
            color: #f26b6b;
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