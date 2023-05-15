<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: tamicasimon--%>
<%--  Date: 5/10/23--%>
<%--  Time: 8:05 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Viewing One Ad" />--%>
<%--    </jsp:include>--%>
<%--    <title>${arbitraryAd.title}</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
<%--<div>--%>
<%--    <h1>Title: ${arbitraryAd.title}</h1>--%>
<%--    <h4>Description: ${arbitraryAd.description}</h4>--%>
<%--&lt;%&ndash;    <h5>Category: ${arbitraryAd.categories}</h5>&ndash;%&gt;--%>
<%--&lt;%&ndash;    refine this and may need another jsp/servlet&ndash;%&gt;--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>

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
            color: #ff8c00; /* pastel orange */
            margin-top: 50px;
            margin-bottom: 30px;
        }
        .container {
            margin: 0 auto;
            width: 50%;
            text-align: center;
        }
        label {
            color: #ffd700; /* pastel yellow */
        }
        input[type=text], .btn-primary {
            background-color: #ffe5b4; /* pastel orange */
            border-color: #ffd700; /* pastel yellow */
            color: #ffd700; /* pastel yellow */
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
</body>
</html>