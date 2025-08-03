<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Pahana Edu | Login</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      background-color: #f7f3fb;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .container {
      display: flex;
      background-color: #f7f3fb;
      width: 90%;
      max-width: 1000px;

      border-radius: 12px;
      overflow: hidden;
    }

    .left-section {
      flex: 1;
      background-color: #f7f3fb;
      padding: 60px 30px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      color: #4c3a6b;
    }

    .left-section h1 {
      font-size: 80px;
      font-weight: 800;
      margin-bottom: 10px;
    }

    .left-section p {
      font-size: 20px;
      color: #9d94b6;
      margin-top: 10px;
    }

    .right-section {
      flex: 1;
      background-color: #f7f3fb;
      padding: 60px 40px;
    }

    .login-form {
      display: flex;
      flex-direction: column;
    }

    .login-form h2 {
      text-align: center;
      font-size: 28px;
      font-weight: 700;
      color: #4c3a6b;
      margin-bottom: 30px;
    }

    label {
      font-size: 14px;
      font-weight: 600;
      color: #4c3a6b;
      margin-bottom: 6px;
    }

    input[type="text"],
    input[type="password"] {
      padding: 12px;
      margin-bottom: 20px;
      border: none;
      border-radius: 6px;
      background-color: #f3e7f5;
      color: #4c3a6b;
    }

    input:focus {
      outline: none;
      box-shadow: 0 0 5px #c7addb;
    }

    button {
      background-color: #5e4b78;
      color: white;
      padding: 14px;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    button:hover {
      background-color: #4b3a67;
    }

    .error {
      color: #d6336c;
      background-color: #fbe4ed;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #f5b3ca;
      border-radius: 6px;
      text-align: center;
    }

    .register-link {
      margin-top: 15px;
      font-size: 13px;
      text-align: center;
      color: #4c3a6b;
    }

    .register-link a {
      color: #4c3a6b;
      font-weight: bold;
      text-decoration: none;
    }

    .register-link a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

<div class="container">
  <!-- Left Branding Section -->
  <div class="left-section">
    <h1>PAHANA<br>EDU</h1>
    <p>Where Every Page Begins a New Journey.</p>
  </div>

  <!-- Right Login Form Section -->
  <div class="right-section">
    <form action="login" method="post" class="login-form">
      <h2>Login</h2>

      <% String error = (String) request.getAttribute("error"); %>
      <% if (error != null) { %>
        <div class="error"><%= error %></div>
      <% } %>

      <label for="username">Username</label>
      <input type="text" name="username" id="username" required placeholder="Enter Username" />

      <label for="password">Password</label>
      <input type="password" name="password" id="password" required placeholder="Enter Password" />

      <button type="submit">Login</button>

      <div class="register-link">
        Do not have an account ? <a href="register.jsp">Register</a>
      </div>
    </form>
  </div>
</div>

</body>
</html>
