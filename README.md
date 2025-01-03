**Project Title: PORTFOLYX**

**Project Overview:**

Portfolyx is a web-based application designed to help students showcase their projects and portfolios while allowing teachers or institutions to monitor, manage, and provide feedback on student progress. This platform provides an interactive and user-friendly solution for tracking project milestones, uploading media files, and presenting student achievements in an organized manner.

The application features 3 roles: Admin (Institution), Teacher, and User (Student). The Admin can add teachers and students, manage their profiles, review all CRUD operations, and accept or reject entries. The Teacher can update their profile, view the projects and portfolios of assigned students, and provide feedback. The Student can update their profile, upload projects and portfolios, and manage updates for both. This system ensures streamlined workflows and effective collaboration between students, teachers, and administrators.

This project leverages Spring Boot for the backend, MySQL for database management, and JSP (Java Server Pages) for the frontend, with an optional integration of React for a modern, dynamic UI experience. The robust tech stack ensures scalability, security, and efficiency, making it suitable for deployment in real-world educational institutions.

**Key Features:**

- Track milestones and progress for ongoing projects
- Secure authentication for Admins and Users
- Real-time tracking of project statuses
- Room Inventory Management
- Responsive and accessible design
- Reporting and Analytics

**Technologies Used:**

* Backend : Spring Boot (Java Framework).
* Frontend: JSP (Java Server Pages) and optional integration of React for an enhanced UI.
* Database: MySQL (Relational Database Management System).

**Tools & Libraries:**

* Eclipse IDE for Enterprise Java and Web Developers (2024-06)
* MySQL Workbench
* Visual Studio Code (VSCode) 
* Spring Security for authentication and authorization.
* Hibernate ORM for database operations.
* Bootstrap for responsive UI.
* Optional: Axios and React Router for frontend state management.

**Target Audience:**

- Primary Users: Students who want to maintain professional portfolios and showcase their academic or personal projects.
- Secondary Users: Teachers, mentors, and institutions aiming to manage and monitor student progress effectively.

**How to run:**

- Download the project ZIP file from the repository.
- Extract the downloaded ZIP file to a preferred location on your system.
- Open the extracted folder in your preferred code editor (e.g., Eclipse, Visual Studio Code, Sublime Text, Atom).
- Open a terminal or command prompt within the project directory.
- Or you can clone the repository using:
     ```
     git clone https://github.com/2200031797KavyaA/StudentProjectAndPortfolioManagement.git
     cd StudentProjectAndPortfolioManagement
     ```
- Set Up Backend:
  - Ensure Java 18+ and Spring Tool Suite (STS) are installed.
  - Import the project into Eclipse IDE for Enterprise Java and Web Developers (2024-06).
  - Configure the MySQL Database in the application.properties file
    ```
    spring.datasource.url=jdbc:mysql://localhost:3306/student_portfolio
    spring.datasource.username=your_username
    spring.datasource.password=your_password
    ```
  - Go to the Boot Dashboard, right-click the project, and select Start to run the application.
- Frontend:
  - The frontend is built using JSP (Java Server Pages) and is served directly by the Spring Boot application.
- Open a web browser and navigate to `http://localhost:1797/` to access the Portfolyx.

That's it! You've successfully set up and launched Portfolyx on your local system.

**Output Video:**

Please watch the video at 0.5x for your convenience.

https://github.com/user-attachments/assets/ab824a9a-f5b4-4667-a4ec-a0cc6d0d7379
