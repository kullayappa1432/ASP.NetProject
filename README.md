:

📚 ASP.NET Student Management System
📌 Overview

This ASP.NET Web Forms project is a complete student management system that includes:

Library CRUD Operations – Add, view, edit, and delete library books.

Exam Registration Form – Students can register for exams with personal and academic details.

Student Data Handling – Manage student records using GridView with edit/delete functionality.

✨ Features
📖 Library CRUD

➕ Add New Books

📄 View All Books

✏ Edit Book Information

❌ Delete Books

📝 Exam Registration Form

🖊 Register Students for Exams

📅 Select Exam Dates

🎓 Choose Subjects & Departments

📥 Save Registration Data to Database

👨‍🎓 Student Data Handling (GridView)

📋 Displays all student details from the database

✏ Inline Edit student information

❌ Delete students from the list

🔄 Update data without page refresh (optional AJAX integration)

🛠 Technologies Used

Frontend: HTML5, CSS3, ASP.NET Web Forms Controls

Backend: C#

Database: SQL Server (via SqlDataSource)

IDE: Visual Studio

📂 Project Structure
📁 ASP.NET Student Management System
 ├── 📁 Library
 │     ├── Library.aspx
 │     ├── Library.aspx.cs
 │     └── Library CRUD SQL scripts
 ├── 📁 ExamRegistration
 │     ├── ExamRegistration.aspx
 │     ├── ExamRegistration.aspx.cs
 ├── 📁 StudentData
 │     ├── StudentDataHandlingByUsingGrid.aspx
 │     ├── StudentDataHandlingByUsingGrid.aspx.cs
 ├── 📄 Web.config
 └── 📄 README.md

⚡ Setup Instructions

Clone the repository:

git clone https://github.com/your-username/student-management-system.git


Open the project in Visual Studio.

Configure the Web.config file with your SQL Server connection string:

<connectionStrings>
    <add name="ConnectionString" connectionString="Data Source=YOUR_SERVER;Initial Catalog=YOUR_DATABASE;Integrated Security=True"/>
</connectionStrings>


Run SQL scripts to create necessary tables.

Press F5 to run the project.

🎨 UI Highlights

Colorful theme with gradients & shadows

Responsive layout for better viewing

Interactive buttons for CRUD actions

GridView styling for professional look

📸 Screenshots

(Add your project screenshots here for better presentation)

👨‍💻 Author

Rallapalli Kullayappa
Java & ASP.NET Full Stack Developer
