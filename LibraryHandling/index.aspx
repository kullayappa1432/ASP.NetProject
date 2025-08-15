<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Library Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style type="text/css">
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
        }

        header {
            background-color: #2c3e50;
            color: white;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        header h1 {
            margin: 0;
            font-size: 32px;
        }

        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
        }

        .dashboard {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 30px;
        }

        .card {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            transition: transform 0.2s ease, box-shadow 0.3s ease;
            cursor: pointer;
            text-decoration: none;
            color: #333;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }

        .card h3 {
            margin-bottom: 10px;
            font-size: 20px;
            color: #2c3e50;
        }

        .card p {
            color: #777;
            font-size: 14px;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #ecf0f1;
            font-size: 14px;
            color: #777;
            margin-top: 60px;
        }

        @media (max-width: 600px) {
            header h1 {
                font-size: 24px;
            }

            .card h3 {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Library Management System</h1>
        </header>

        <div class="container">
            <div class="dashboard">
                <a href="LibraryHandling.aspx" class="card">
                    <h3>📘 Manage Books</h3>
                    <p>Add, update or delete library books.</p>
                </a>
                <a href="Members.aspx" class="card">
                    <h3>👥 Manage Members</h3>
                    <p>Register and maintain library users.</p>
                </a>
                <a href="Borrowing.aspx" class="card">
                    <h3>📦 Issue & Return</h3>
                    <p>Handle book issue and return transactions.</p>
                </a>
                <a href="Reports.aspx" class="card">
                    <h3>📊 Reports</h3>
                    <p>View reports of borrowed and returned books.</p>
                </a>
                <a href="About.aspx" class="card">
                    <h3>ℹ️ About</h3>
                    <p>System info, team, and contact details.</p>
                </a>
            </div>
        </div>

        <footer>
            &copy; 2025 Library Management System. All rights reserved.
        </footer>
    </form>
</body>
</html>
