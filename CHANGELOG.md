# 📦 Changelog
All notable changes to this project will be documented in this file.  
This project follows [Semantic Versioning](https://semver.org/).

---

## Version [1.1.0]  - 2025-08-16
🎨 **UI Design Modifications and Enhancements**

### 🖌️ Changed

- Dashboard navigation updated.


---


## Version [1.0.0]  - 2025-08-09
🎉 **Initial Production Release**

### 🚀 Overview
This is the **first stable production release** of the Pahan Edu Bookshop Management System, built using Java, JSP, and Servlets. It includes customer, item, and billing management modules, secure authentication, and a styled dashboard.

### ✅ Features

- **Authentication**
    - Secure session-based login/logout system
    - Restricted access to protected pages
    - Basic login UI (`login.jsp`, `dashboard.jsp`)

- **Customer Management**
    - Add, view, update, and delete customer records
    - `CustomerServlet`, `CustomerDAO`, `CustomerDAOImpl` included

- **Item Management**
    - Manage bookshop items (CRUD)
    - Styled UI for item list and forms
    - Seed data for sample items

- **Billing System**
    - Create and view bills dynamically
    - Bill items selection, price calculation
    - `OrderServlet`, `OrderDAO`, `OrderDAOImpl`

- **Search Account Details**
    - Search customer account information by ID or username
    - View details such as name, email, phone number, and account creation date
    - Integrated with `AccountDetailsServlet`, `CustomerDAO`, and `CustomerDAOImpl`
    - Displays results in a user-friendly table format
    - Error handling for invalid or non-existing account IDs

- **Dashboard**
    - Navigation to all modules
    - Clean layout and basic styles

### 🛡️ Security

- Session validation for protected pages
- JSPs hidden under `WEB-INF/` to prevent direct access

### 🎨 UI/UX

- Clean and simple layout
- Navigation using basic buttons

### 🧪 Testing

- Unit tests written using JUnit 5
- DAO and Service classes tested
- Dynamic test setup/teardown for isolation

### 📂 Project Structure

- Layered Maven structure:
    - `daoimpl`, `dao`, `model`, `util`
- `sql/` folder contains schema and seed data
- `webapp/` contains `index.jsp`, `WEB-INF/web.xml`

### 🔀 Release Notes

- Finalized after testing on `regression` and `staging` branches
- Merged into `main`
- Git tag `v1.0.0` created
- Documentation and test checklist added to `docs/` folder

---
