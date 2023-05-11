<%--
  Created by IntelliJ IDEA.
  User: tamicasimon
  Date: 5/10/23
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <title>${ad.title}</title>
</head>

<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div>
    <h1>Title: ${ad.title}</h1>
    <h4>Description: ${ad.description}</h4>
    <h5>Category: ${ad.categories}</h5>
<%--    refine this and may need another jsp/servlet--%>
</div>

</body>
</html>
