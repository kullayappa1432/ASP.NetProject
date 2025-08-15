<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Members.aspx.cs" Inherits="Members" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Manage Members - Library Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #f8fafc, #dbeafe);
        }

        .container {
            max-width: 850px;
            margin: 50px auto;
            background: #ffffff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
        }

        h2 {
            text-align: center;
            color: #1e3a8a;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: 600;
            color: #374151;
            margin-bottom: 6px;
            display: block;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 10px 12px;
            font-size: 15px;
            border: 2px solid #c7d2fe;
            border-radius: 6px;
            transition: 0.3s border-color;
        }

        .form-group input[type="text"]:focus {
            border-color: #6366f1;
            outline: none;
        }

        .actions {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            margin-top: 10px;
        }

        .actions asp\:Button {
            flex: 1;
        }

        .actions .aspnet-button {
            padding: 10px 15px;
            font-size: 15px;
            border: none;
            border-radius: 6px;
            color: #fff;
            cursor: pointer;
            transition: 0.3s;
        }

        #btnInsert { background-color: #10b981; }
        #btnUpdate { background-color: #3b82f6; }
        #btnDelete { background-color: #ef4444; }
        #btnView   { background-color: #6366f1; }

        .aspnet-button:hover {
            opacity: 0.9;
        }

        asp\:GridView {
            margin-top: 30px;
            width: 100%;
            border-collapse: collapse;
        }

        asp\:GridView th, asp\:GridView td {
            padding: 12px;
            border: 1px solid #e5e7eb;
        }

        asp\:GridView th {
            background-color: #f3f4f6;
            color: #111827;
            font-weight: bold;
        }

        asp\:GridView tr:nth-child(even) {
            background-color: #f9fafb;
        }

        @media (max-width: 600px) {
            .actions {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>👥 Member Management</h2>

            <div class="form-group">
                <label for="txtName">Full Name</label>
                <asp:TextBox ID="txtName" runat="server" placeholder="Enter member's full name" 
                    CssClass="input" required ontextchanged="txtName_TextChanged"/>
            </div>

            <div class="form-group">
                <label for="txtEmail">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter email address" CssClass="input" required/>
            </div>

            <div class="form-group">
                <label for="htmno">Hall Ticket Number</label>
                <asp:TextBox ID="htmno" runat="server" placeholder="Enter Hall Ticket Number" CssClass="input" required/>
            </div>

            <div class="form-group">
                <label for="txtPhone">Contact Number</label>
                <asp:TextBox ID="txtPhone" runat="server" placeholder="Enter contact number" CssClass="input" required />
            </div>

            <div class="form-group">
                <label for="txtMemberID">Member ID (for update/delete)</label>
                <asp:TextBox ID="txtMemberID" runat="server" placeholder="Enter Member ID" OnTextChanged="txtMemberID_TextChanged" CssClass="input" required/>
            </div>

            <div class="actions">
                <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="aspnet-button" OnClick="btnInsert_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="aspnet-button" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="aspnet-button" OnClick="btnDelete_Click" />
                <asp:Button ID="btnView" runat="server" Text="View All" CssClass="aspnet-button" OnClick="btnView_Click" />
            </div>

            <asp:GridView ID="GridView1" runat="server" DataKeyNames="Mhtm" 
                onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
           


        </div>
    </form>
</body>
</html>
