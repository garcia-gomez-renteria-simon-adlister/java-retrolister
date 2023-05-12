<%--
  Created by IntelliJ IDEA.
  User: tamicasimon
  Date: 5/10/23
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing One Ad" />
    </jsp:include>
    <title>${arbitraryAd.title}</title>
</head>

<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div>
    <h1>Title: ${arbitraryAd.title}</h1>
    <h4>Description: ${arbitraryAd.description}</h4>
    <h4>User: ${arbitraryUser.username}</h4>
<%--    refine this and may need another jsp/servlet--%>
</div>

</body>
</html>
