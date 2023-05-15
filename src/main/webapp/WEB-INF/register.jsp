
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <style>
        body {
            background-color: #b6e3e9;
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
        .form-control {
            font-family: 'Press Start 2P', cursive;
            font-size: 20px;
            background-color: #fff;
            color: #000;
            border: none;
            padding: 10px;
            margin-bottom: 10px;
            text-align: center;
        }
        label {
            display: block;
            text-align: left;
            color: #000;
            margin-bottom: 5px;
        }
        input[type=submit] {
            background-color: #f26b6b;
            color: #fff;
            border: none;
            padding: 10px;
            margin-top: 10px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #ff8c8c;
        }
    </style>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <h1>Please fill in your information.</h1>
    <form action="/register" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="username">Player Name</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/webfont/1.6.28/webfontloader.js"></script>

<script>
    WebFont.load({
        google: {
            families: ['Press Start 2P']
        }
    });

    function validateForm() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm_password").value;
        if (password != confirmPassword) {
            alert("Error loading Character please make sure password matches");
            return false;
        }
        return true;
    }
</script>
</body>
</html>