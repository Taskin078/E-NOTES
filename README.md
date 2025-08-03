# E-NOTES 📝

**E-NOTES** is a simple and secure online note-taking web application built using **Java (JSP/Servlet)**, **JDBC**, and **MySQL**. It allows users to register, log in, and manage their personal notes efficiently.

---

## 🚀 Features

- ✅ User Registration and Login
- ✅ Create, Edit, and Delete Notes
- ✅ MySQL database integration
- ✅ Session management for secure access
- ✅ Clean and responsive UI using Bootstrap

---

## 🛠️ Technologies Used

- **Frontend**: HTML, CSS, Bootstrap
- **Backend**: Java (JSP & Servlet)
- **Database**: MySQL
- **Server**: Apache Tomcat

---

## 📥 How to Run the Project

### 1. Clone the Repository
```bash
git clone https://github.com/Taskin078/E-NOTES.git
```

### 2. Import Project
- Open **Eclipse** or any Java IDE
- Import the project as an existing Dynamic Web Project

### 3. Set Up MySQL
- Create a database:  
  ```sql
  CREATE DATABASE enotesdb;
  ```
- Create required tables (`users`, `notes`) manually or use provided SQL (if available).
- Update DB credentials in `DBConnect.java`:
  ```java
  String url = "jdbc:mysql://localhost:3306/enotesdb";
  String user = "root";
  String password = "";
  ```

### 4. Run on Apache Tomcat
- Deploy the project on **Apache Tomcat** (recommended: v9+)
- Access in browser:  
  ```
  http://localhost:8080/E-NOTES/
  ```

---

## 📁 Project Structure

```
E-NOTES/
├── src/
│   └── com/
│       ├── dao/
│       ├── db/
│       └── servlet/
├── WebContent/
│   ├── all_components/
│   ├── CSS/
│   ├── JS/
│   ├── register.jsp
│   ├── login.jsp
│   ├── home.jsp
│   └── profile.jsp
├── README.md
└── .gitignore
```

---

## 📸 Screenshots (optional)

_Add screenshots of your UI here for better visualization._

---

## 🙏 Credits

This project was created as part of a learning journey in Java Full Stack Development. Special thanks to online tutorials and mentors.

---

## 📄 License

This project is licensed under the MIT License.
