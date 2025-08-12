<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Help - Pahana Edu</title>
  <link rel="stylesheet" href="../index.css" />
  <style>
  @import url('https://fonts.googleapis.com/css2?family=Raleway:wght@400;600;700&display=swap');

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Raleway', sans-serif;
    }

    body {
      background: #f9f5ff;
      color: #444;
      /* subtle gradient background for main */
      background: linear-gradient(135deg, #e9e3f8 0%, #f6f1fc 100%);
    }

    .layout {
      display: flex;
      min-height: 100vh;
    }

    /* Sidebar styles unchanged */
    .sidebar {
      position: fixed;
      top: 0;
      left: 0;
      z-index: 10;
      width: 285px;
      height: 100vh;
      background: rgba(255, 255, 255, 0.95);
      backdrop-filter: blur(12px);
      border-radius: 0 20px 20px 0;
      box-shadow: 0 8px 24px rgba(186, 170, 255, 0.3);
      padding: 20px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .nav {
      list-style: none;
      padding: 0;
    }

    .nav-link {
      display: block;
      padding: 18px 18px;
      font-size: 20px;
      border-radius: 12px;
      transition: 0.3s;
      color: #444;
      font-weight: 500;
      text-decoration: none;
    }

    .nav-link:hover {
      background-color: rgba(224, 210, 255, 0.5);
      color: #a084e8;
      font-weight: 600;
    }

    .btn-dark {
      width: 100%;
      padding: 12px;
      font-size: 15px;
      background: linear-gradient(90deg, #a084e8, #d5c9ff);
      border: none;
      color: white;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.3s ease;
      margin-bottom: 30px;
    }

    .btn-dark:hover {
      background: linear-gradient(90deg, #8b6edb, #c6b9ff);
      box-shadow: 0 4px 10px rgba(186, 170, 255, 0.3);
    }

    .logout-container {
      text-align: center;
    }

    /* Main Help Content - updated for modern pastel purple theme */

    .main-content {
      margin-left: 285px; /* same as sidebar width */
      padding: 20px;
      flex-grow: 1;
      background: #f6f1fc;
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: flex-start;
    }

    .help-container {
      max-width: 1100px;
      width: 100%;
      background: #fff;
      padding: 50px 60px;
      border-radius: 24px;
      box-shadow: 0 15px 30px rgba(160, 140, 240, 0.2);
      border: 1px solid #d3c9ff;
      transition: box-shadow 0.3s ease;
    }
    .help-container:hover {
      box-shadow: 0 25px 45px rgba(160, 140, 240, 0.35);
    }

    .help-title {
      font-size: 36px;
      font-weight: 900;
      color: #9370db; /* pastel purple */
      margin-bottom: 45px;
      text-align: center;
      letter-spacing: 1.2px;
      text-shadow: 0 1px 3px rgba(147, 112, 219, 0.5);
    }

    .help-section {
      margin-bottom: 35px;
      border-left: 5px solid #c3b1f5;
      padding-left: 20px;
      transition: border-color 0.3s ease;
    }
    .help-section:hover {
      border-color: #9370db;
    }

    .help-section h3 {
      color: #7e6bcb;
      margin-bottom: 12px;
      font-size: 24px;
      font-weight: 700;
      letter-spacing: 0.03em;
    }

    .help-section p {
      font-size: 17px;
      line-height: 1.7;
      color: #6a5acd;
      font-weight: 500;
      opacity: 0.85;
      max-width: 650px;
    }

    .highlight {
      background-color: #ede7ff;
      border-left: 5px solid #9370db;
      padding: 15px 20px;
      margin-top: 15px;
      border-radius: 12px;
      font-size: 16px;
      color: #5a4fbf;
      font-weight: 600;
      box-shadow: 0 4px 12px rgba(147, 112, 219, 0.15);
    }

    /* Responsive improvements */
    @media (max-width: 980px) {
      .main-content {
        margin-left: 280px;
        padding: 30px 30px;
        align-items: center;
      }
      .help-container {
        padding: 40px 30px;
      }
      .help-section p {
        max-width: 100%;
      }
    }
    @media (max-width: 600px) {
      .main-content {
        margin-left: 0;
        padding: 20px 15px;
      }
      .help-container {
        border-radius: 16px;
        padding: 25px 20px;
        box-shadow: none;
        border: none;
      }
      .help-title {
        font-size: 28px;
      }
      .help-section h3 {
        font-size: 20px;
      }
    }

  </style>
</head>
<body>
  <div class="layout">
    <!-- Sidebar -->
    <aside class="sidebar">
      <nav>
        <ul class="nav">
          <li><a href="dashboard.jsp" class="nav-link">📚 Dashboard</a></li>
          <li><a href="Customer" class="nav-link">🧑‍🤝‍🧑 Customers</a></li>
          <li><a href="Item" class="nav-link">📦 Items</a></li>
          <li><a href="AccountDetails" class="nav-link">🗂️ Account Details</a></li>
          <li><a href="BillingPage" class="nav-link">💳 Billing</a></li>
          <li><a href="help.jsp" class="nav-link">🆘 Help</a></li>
          <li><a href="Order" class="nav-link">📈 Orders</a></li>
        </ul>
      </nav>
      <div class="logout-container">
        <form action="logout" method="post">
          <button class="btn-dark" onclick="window.location.href='login.jsp'">Log Out</button>
        </form>
      </div>
    </aside>

    <!-- Main Help Content -->
    <div class="main-content">
      <div class="help-container">
        <div class="help-title">🆘 System Help - Pahana Edu</div>

        <div class="help-section">
          <h3>1. Login</h3>
          <p>To access the system, enter your username and password on the login page.</p>
        </div>

        <div class="help-section">
          <h3>2. Add New Customer</h3>
          <p>Go to “Customers” and click “Add Customer”. Fill in details like account number, name, address, phone, and units consumed.</p>
        </div>

        <div class="help-section">
          <h3>3. Edit Customer</h3>
          <p>Click “Edit” beside a customer entry to update their info.</p>
        </div>

        <div class="help-section">
          <h3>4. Manage Items</h3>
          <p>In the “Items” section, add, update, or delete item records like books or products.</p>
        </div>

        <div class="help-section">
          <h3>5. View Account Details</h3>
          <p>Check customer accounts and their billing details from the “Account Details” section.</p>
        </div>

        <div class="help-section">
          <h3>6. Calculate & Print Bill</h3>
          <p>The system computes the bill based on units consumed. You can view and print it for each customer.</p>
          <div class="highlight">💡 Tip: Always check item prices before generating bills.</div>
        </div>

        <div class="help-section">
          <h3>7. Help</h3>
          <p>This page provides help on using all parts of the system.</p>
        </div>

        <div class="help-section">
          <h3>8. Exit System</h3>
          <p>Click “Log Out” at the bottom left of the sidebar to safely exit the system.</p>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
