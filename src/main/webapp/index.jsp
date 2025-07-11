<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Pahana Edu | Login</title>
  <link rel="stylesheet" href="index.css">
</head>
<body>
  <div class="login-container">
    <form action="../LoginServlet" method="post" class="login-form">
      <h2>Login to Pahana Edu</h2>

      <%-- Optional error message display --%>
      <%
        String error = request.getParameter("error");
        if (error != null) {
      %>
        <p class="error"><%= error %></p>
      <% } %>

      <label for="username">Username</label>
      <input type="text" name="username" id="username" required placeholder="Enter Username">

      <label for="password">Password</label>
      <input type="password" name="password" id="password" required placeholder="Enter Password">

      <button type="button" onclick="window.location.href='jsp/dashboard.jsp'">Login</button>
    </form>
  </div>
</body>
</html>