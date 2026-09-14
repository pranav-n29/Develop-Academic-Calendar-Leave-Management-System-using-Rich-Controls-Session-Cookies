<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AcademicLeaveSystem.Login" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form runat="server">
        <h2>Academic Leave Management System</h2>

        Username:
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <br /><br />

        Password:
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        <br /><br />

        Remember Username:
        <asp:CheckBox ID="chkRemember" runat="server" />
        <br /><br />

        <asp:Button ID="btnLogin" runat="server"
            Text="Login" OnClick="btnLogin_Click" />

        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
</body>
</html>
