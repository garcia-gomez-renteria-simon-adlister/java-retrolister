

<<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <style>
        body {
            background-color: #7B61FF;
            font-family: 'Press Start 2P', cursive;
            font-size: 20px;
        }
        h1 {
            text-align: center;
            color: #FFC8DD;
            margin-top: 50px;
            margin-bottom: 30px;
        }
        label {
            color: #FFC8DD;
        }
        input[type=text], select, .btn-primary {
            background-color: #E0C3FC;
            border-color: #FFC8DD;
            color: #5F4B8B;
        }
        textarea {
            background-color: #E0C3FC;
            border-color: #FFC8DD;
            color: #5F4B8B;
            resize: none;
        }
        .error-message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <h1>Create a new Ad</h1>

    <c:if test="${not empty errorMessage}">
        <div class="error-message">${errorMessage}</div>
    </c:if>
    <form action="/ads/create" method="post" type="sticky">
        <input type="hidden" name="hasError" value="${not empty errorMessage}">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
            <c:if test="${not empty titleError}">
                <div class="error-message">${titleError}</div>
            </c:if>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
        <div class="form-group">
            <label for="genre">Select game genre:</label>
            <select id="genre" name="genre">
                <option value="action">Action</option>
                <option value="rpg">RPG</option>
                <option value="adventure">Adventure</option>
                <option value="fantasy">Fantasy</option>
                <option value="firstPerson">First Person</option>
            </select>
        </div>
        <input type="submit" class="btn btn-block btn-primary" style="background-color: #5F4B8B; border-color: #5F4B8B; color: #E0C3FC; font-weight: bold;" value="Submit">
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