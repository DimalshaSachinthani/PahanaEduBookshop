# 📘 Pahan Edu Web - Bookshop Management System
Pahan Edu Web is a Java Maven-based web application built using JSP and Servlets, developed for managing billing, customers, and item data for the Pahan Edu Bookshop.

## 📂 Project Structure

<pre>  
  pahan-edu-web/ 
  ├── pom.xml 
  ├── README.md 
  ├── LICENSE
  ├── sql/
  └── src/
  │ └── main/ 
  │      └── main/  
  │           └── dao/
  │           │    └── impl/
  │           │    │    └── CustomerDAOImpl.java
  │           │    ├── CustomerDAO.java
  │           ├── servlet/ 
  │           │     └── CustomerServlet.java 
  │           ├── model/ 
  │           │     └── Customer.java 
  │           └── util/
  │                 ├── DBConnection.java
  │                 ├── PasswordHasher
  │                 └── Validator
  ├── resources/ 
  └── webapp/ 
  ├── index.jsp 
  └── WEB-INF/ 
  └── web.xml ``` 
</pre>

## ⚙️ Technologies Used
- Java 21
- Maven (WAR packaging)
- JSP + Servlets (Jakarta EE)
- MySQL (schema + seed data included)
- Apache Tomcat 11 (for deployment)
- JUnit 5 (unit testing)
- IntelliJ IDEA (recommended IDE)
- 
## 🚀 How to Run Locally
_No EXE installer — you can run locally via WAR deployment on Tomcat._

### 📦 Prerequisites
- Java 21+
- Apache Tomcat 11+
- MySQL Server (5.7+) / WAMP / XAMPP
- Maven 3.8+

## 📖 Documentation

- [JSP Documentation](https://docs.oracle.com/javaee/7/tutorial/servlets.htm)
- [Servlet Documentation](https://jakarta.ee/specifications/servlet/)
- [Maven Documentation](https://maven.apache.org/guides/index.html)
- [Tomcat Documentation](https://tomcat.apache.org/tomcat-11.0-doc/)
- [MySQL Documentation](https://dev.mysql.com/doc/)
- [Java Documentation](https://docs.oracle.com/en/java/)
- [Jakarta EE Documentation](https://jakarta.ee/specifications/)
- [Apache Commons Documentation](https://commons.apache.org/)
- [JUnit 5 Documentation](https://junit.org/junit5/)
---

## 🔧 Setup Instructions

### 3. Configure Properties
- Create the file:  
  `src/main/resources/application.properties`
- Use the template from:  
  `application-template.properties`

### 4. Build the WAR File
Run the following command in your terminal:

```bash
mvn clean package
```

### 5. Deploy WAR on Tomcat
Copy the generated WAR file:

```bash
target/pahan-edu-web.war
```

Into your Tomcat’s `webapps/` directory.

### 6. Start Tomcat Server
Navigate to the Tomcat `bin/` directory and run:

```bash
./startup.sh     # For Linux/macOS
startup.bat      # For Windows
```

Then visit the app in your browser:

```
http://localhost:8080/PahanEduBookshop/
```

---

## 🔐 Default Login Credentials

- Open your web browser and go to:
  http://localhost:8080/PahanEdu4/

- **Username:** `dimalsha`
- **Password:** `12345`

---


## 🛠️ Testing

To run unit tests:

```bash
mvn test
```

---

## 📫 Contact

For issues or contributions, please open an issue or submit a pull request on the repo.

---

## 📈 Versioning and Changelog

- **Version:** `1.0.0`
- **Changelog:** `CHANGELOG.md`

---

## 📣 Author

**K. K. Dimalsha Sachinthani** – [@DimalshaSachinthani](https://github.com/DimalshaSachinthani)  
Developed for university coursework `CIS6003` as part of the **Pahan Edu** project.

---

## 📝 License

This project is licensed under the **MIT License**.