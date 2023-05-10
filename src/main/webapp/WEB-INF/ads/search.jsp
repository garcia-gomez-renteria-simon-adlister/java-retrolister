<%--
  Created by IntelliJ IDEA.
  User: dr
  Date: 5/10/23
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Page</title>
</head>
<body>
<h1>Search for a specific game</h1>
<div class="container">
  <form action="/search" method="post">
    <label for="searchSelect">Please select which criteria to use
    </label>
    <select id="searchSelect" name="Search Select">
      <option value="title">Game Title</option>
      <option value="category">Category</option>
    </select>
    <button type="submit">Search</button>
  </form>
</div>
</body>
</html>
