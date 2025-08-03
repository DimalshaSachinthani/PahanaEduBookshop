<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Register</title>

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
        background-color: #f7f3fb;
        width: 90%;
        max-width: 500px;
        padding: 40px;
        border-radius: 12px;

      }

      .register-form h2 {
        text-align: center;
        font-size: 28px;
        font-weight: 700;
        color: #4c3a6b;
        margin-bottom: 25px;
      }

      label {
        display: block;
        font-size: 14px;
        font-weight: 600;
        color: #4c3a6b;
        margin-top: 15px;
        margin-bottom: 5px;
      }

      input[type="text"],
      input[type="password"],
      input[type="email"],
      select {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 6px;
        background-color: #f3e7f5;
        color: #4c3a6b;
        margin-bottom: 10px;
      }

      input:focus, select:focus {
        outline: none;
        box-shadow: 0 0 5px #c7addb;
      }

      button {
        background-color: #5e4b78;
        color: white;
        width: 100%;
        padding: 14px;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: bold;
        margin-top: 20px;
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
        margin-bottom: 15px;
        border: 1px solid #f5b3ca;
        border-radius: 6px;
        text-align: center;
      }

      .login-link {
        margin-top: 15px;
        font-size: 13px;
        text-align: center;
        color: #4c3a6b;
      }

      .login-link a {
        color: #4c3a6b;
        font-weight: bold;
        text-decoration: none;
      }

      .login-link a:hover {
        text-decoration: underline;
      }
    </style>

</head>
<body>
  <div class="container">
      <form action="register" method="post" class="register-form">
        <h2>Register</h2>

        <% String error = (String) request.getAttribute("error"); %>
        <% if (error != null) { %>
          <p class="error"><%= error %></p>
        <% } %>

        <label>Username</label>
        <input type="text" name="username" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Phone Number</label>
        <input type="text" name="phoneNum" required>

        <label>Role</label>
        <select name="role" required>
          <option value="student">Student</option>
          <option value="admin">Admin</option>
        </select>

        <button type="submit">Register</button>

        <div class="login-link">
          Already have an account ? <a href="login.jsp">Login</a>
        </div>
      </form>
    </div>

</body>
</html>
