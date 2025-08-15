<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Reports - Library Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #2c3e50;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container {
            max-width: 1000px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0,0,0,0.05);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
        }

        .gridview th, .gridview td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        .gridview th {
            background-color: #2c3e50;
            color: white;
        }

        .gridview tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .gridview tr:hover {
            background-color: #f1f1f1;
        }

        footer {
            text-align: center;
            padding: 20px;
            font-size: 14px;
            color: #777;
            background-color: #ecf0f1;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Library Management System - Reports</h1>
        </header>

        <div class="container">
            <h2>Borrowed & Returned Books Report</h2>
            <asp:GridView ID="GridViewReports" runat="server" CssClass="gridview" 
                AutoGenerateColumns="False" 
                onselectedindexchanged="GridViewReports_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="TransactionID" HeaderText="ID" />
                    <asp:BoundField DataField="MemberName" HeaderText="Member Name" />
                    <asp:BoundField DataField="BookTitle" HeaderText="Book Title" />
                    <asp:BoundField DataField="IssueDate" HeaderText="Issue Date" DataFormatString="{0:dd MMM yyyy}" />
                    <asp:BoundField DataField="ReturnDate" HeaderText="Return Date" DataFormatString="{0:dd MMM yyyy}" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </div>

        <footer>
            &copy; 2025 Library Management System. All rights reserved.
        </footer>
    </form>
</body>
</html>
