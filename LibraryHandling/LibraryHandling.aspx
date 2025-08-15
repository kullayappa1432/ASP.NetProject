<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LibraryHandling.aspx.cs" Inherits="LibraryHandling" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Library Management Page</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #fceabb, #f8b500);
            margin: 0;
            padding: 0;
        }

        form {
            padding: 40px;
            max-width: 900px;
            margin: 40px auto;
            background-color: #ffffff;
            box-shadow: 0 0 20px rgba(0,0,0,0.15);
            border-radius: 12px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        div {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        asp\:TextBox, input[type="text"] {
            padding: 12px;
            font-size: 16px;
            border: 2px solid #f5ba42;
            border-radius: 8px;
            transition: border 0.3s ease;
        }

        asp\:TextBox:focus {
            border-color: #f38b00;
        }

        label {
            font-weight: bold;
            color: #444;
        }

        asp\:Button {
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #Insert {
            background-color: #28a745;
        }

        #Insert:hover {
            background-color: #218838;
        }

        #Delete {
            background-color: #dc3545;
        }

        #Delete:hover {
            background-color: #c82333;
        }

        #Update {
            background-color: #fd7e14;
        }

        #Update:hover {
            background-color: #e8590c;
        }

        #view {
            background-color: #007bff;
        }

        #view:hover {
            background-color: #0056b3;
        }

        asp\:GridView {
            margin-top: 30px;
            border-collapse: collapse;
            width: 100%;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        asp\:GridView th, asp\:GridView td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: center;
        }

        asp\:GridView th {
            background-color: #f1f1f1;
            color: #333;
        }

        asp\:GridView tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        asp\:GridView tr:hover {
            background-color: #fff0cc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>📚 Library Book Management</h1>

            <asp:TextBox ID="bookTitle" placeholder="Enter Book Title" runat="server" 
                ontextchanged="bookTitle_TextChanged" required></asp:TextBox>
            <asp:TextBox ID="authorName" placeholder="Enter Author Name" runat="server" 
                required ontextchanged="authorName_TextChanged"></asp:TextBox>
            <asp:TextBox ID="isbn" placeholder="Enter ISBN Number" runat="server" 
                ontextchanged="isbn_TextChanged" required></asp:TextBox>

            <label>🔧 Update Section (Enter Book ID to update existing record)</label>
            <asp:TextBox ID="bookID" placeholder="Enter Book ID" runat="server" OnTextChanged="bookID_TextChanged" required></asp:TextBox>

            <asp:Button ID="Insert" runat="server" Text="➕ Add Book" OnClick="Insert_Click" />
            <asp:Button ID="Delete" runat="server" Text="❌ Remove Book" OnClick="Delete_Click" />
            <asp:Button ID="Update" runat="server" Text="✏️ Update Book" OnClick="Update_Click" />
            <asp:Button ID="view" runat="server" Text="🔍 View Library" OnClick="view_Click" />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" />
        </div>
    </form>
</body>
</html>
