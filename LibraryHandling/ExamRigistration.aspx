<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExamRigistration.aspx.cs" Inherits="ExamRigistration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Semester End Exam Registration</title>
    <style>
        body {
            font-family: Arial;
            background: #f4f6f9;
            padding: 20px;
        }
        .form-box {
            background: white;
            padding: 30px;
            border-radius: 10px;
            width: 500px;
            margin: auto;
            box-shadow: 0 0 10px #ccc;
        }
        .form-box h2 {
            text-align: center;
            color: #2c3e50;
        }
        .form-row {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
        }
        input, select {
            width: 100%;
            padding: 8px;
        }
        .error {
            color: red;
            font-size: 12px;
        }
        .submit-btn {
            background-color: #2c3e50;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-box">
            <h2>Exam Registration Form</h2>
            <div class="form-row">
                <label for="txtName">Student Name:</label>
                <asp:TextBox ID="txtName" runat="server" ontextchanged="txtName_TextChanged" />
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                    ErrorMessage="Name is required." CssClass="error" Display="Dynamic" />
            </div>

            <div class="form-row">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email is required." CssClass="error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Invalid email format." CssClass="error" Display="Dynamic"
                    ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" />
            </div>

            <div class="form-row">
                <label for="txtMobile">Mobile Number:</label>
                <asp:TextBox ID="txtMobile" runat="server" />
                <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile"
                    ErrorMessage="Mobile is required." CssClass="error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile"
                    ErrorMessage="Invalid mobile number." CssClass="error" Display="Dynamic"
                    ValidationExpression="^\d{10}$" />
            </div>

            <div class="form-row">
                <label for="ddlCourse">Course:</label>
                <asp:DropDownList ID="ddlCourse" runat="server">
                    <asp:ListItem Text="-- Select Course --" Value="" />
                    <asp:ListItem Text="BCA" Value="BCA" />
                    <asp:ListItem Text="MCA" Value="MCA" />
                    <asp:ListItem Text="BSc" Value="BSc" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCourse" runat="server" ControlToValidate="ddlCourse"
                    InitialValue="" ErrorMessage="Course is required." CssClass="error" Display="Dynamic" />
            </div>

            <div class="form-row">
                <label for="txtSubject">Subject Name:</label>
                <asp:TextBox ID="txtSubject" runat="server" />
                <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="txtSubject"
                    ErrorMessage="Subject is required." CssClass="error" Display="Dynamic" />
            </div>

            <div class="form-row">
                <asp:Button ID="btnSubmit" runat="server" Text="Register" CssClass="submit-btn" OnClick="btnSubmit_Click" />
            </div>
            
           
        </div>
    </form>
</body>
</html>
