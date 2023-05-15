
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing One Ad" />
    </jsp:include>
    <style>
        body {
            background-color: #fdf2e9;
            font-family: 'Press Start 2P', cursive;
            font-size: 20px;
        }
        h1 {
            text-align: center;
            color: #ff8c00;
            margin-top: 50px;
            margin-bottom: 30px;
        }
        .container {
            margin: 0 auto;
            width: 50%;
            text-align: center;
        }
        label {
            color: #ffd700;
        }
        input[type=text], .btn-primary {
            background-color: #ffe5b4;
            border-color: #ffd700;
            color: #ffd700;
        }
        .hidden {
            display: none;
        }
    </style>
</head>

<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Title: ${arbitraryAd.title}</h1>
    <h4>Description: ${arbitraryAd.description}</h4>
<<<<<<< HEAD
    <%--    <h5>Category: ${arbitraryAd.categories}</h5>--%>
    <%--    refine this and may need another jsp/servlet--%>
    <button id="updateBtn" class="btn btn-primary">Update Description</button>
    <form id="updateForm" class="hidden" action="/ads/update" method="POST">
        <input type="hidden" name="id" value="${arbitraryAd.id}" />
        <label>New Description:</label><br />
        <textarea name="description" rows="4" cols="50">${arbitraryAd.description}</textarea><br />
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/webfont/1.6.28/webfontloader.js"></script>
<script>
    WebFont.load({
        google: {
            families: ['Press Start 2P']
        }
    });
    const updateBtn = document.querySelector('#updateBtn');
    const updateForm = document.querySelector('#updateForm');
    updateBtn.addEventListener('click', () => {
        updateBtn.classList.add('hidden');
        updateForm.classList.remove('hidden');
    });
</script>

<%--    <h4>User: ${arbitraryUser.user_id}</h4>--%>
<h4>User: ${arbitraryUser.getUser_id()}</h4>
</div>

</body>
</html>