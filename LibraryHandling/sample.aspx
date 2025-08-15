<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sample.aspx.cs" Inherits="sample" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Manage Books</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f2f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccd0d5;
            border-radius: 5px;
            font-size: 16px;
        }

        .btn {
            background-color: #3498db;
            color: white;
            padding: 12px 20px;
            border: none;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        .grid-container {
            margin-top: 30px;
        }

        .gridview-style {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }

        .gridview-style th, .gridview-style td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        .gridview-style th {
            background-color: #2c3e50;
            color: white;
        }

        .gridview-style tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .gridview-style tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>📚 Manage Books</h2>

            <div class="form-group">
                <asp:TextBox ID="txtTitle" runat="server" CssClass="input-text" Placeholder="Title" OnTextChanged="txtTitle_TextChanged1" />
            </div>

            <div class="form-group">
                <asp:TextBox ID="txtAuthor" runat="server" CssClass="input-text" Placeholder="Author" />
            </div>

            <div class="form-group">
                <asp:TextBox ID="txtISBN" runat="server" CssClass="input-text" Placeholder="ISBN" />
            </div>

            <asp:Button ID="btnAdd" runat="server" CssClass="btn" Text="➕ Add Book" 
                onclick="btnAdd_Click"/>

            <div class="grid-container">
                <asp:GridView ID="GridViewBooks" runat="server" AutoGenerateColumns="False" CssClass="gridview-style">
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Author" HeaderText="Author" />
                        <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                        <asp:CheckBoxField DataField="Available" HeaderText="Available" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
