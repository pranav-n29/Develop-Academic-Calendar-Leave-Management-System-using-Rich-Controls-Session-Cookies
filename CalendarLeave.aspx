<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="CalendarLeave.aspx.cs"
    Inherits="AcademicLeaveSystem.CalendarLeave" %>

<!DOCTYPE html>
<html>
<head>
    <title>Academic Calendar</title>
</head>
<body>
<form runat="server">

    <h2>Academic Calendar & Leave Management</h2>

    <asp:Label ID="lblUser" runat="server"></asp:Label>

    <h3>Academic Calendar</h3>

    <asp:Calendar ID="Calendar1" runat="server"
        OnSelectionChanged="Calendar1_SelectionChanged">
    </asp:Calendar>

    <br />

    <asp:Label ID="lblDate" runat="server"></asp:Label>

    <h3>Apply Leave</h3>

    Reason:
    <asp:TextBox ID="txtReason" runat="server"></asp:TextBox>

    <asp:Button ID="btnLeave" runat="server"
        Text="Apply Leave" OnClick="btnLeave_Click" />

    <br /><br />

    <asp:Label ID="lblResult" runat="server"></asp:Label>

</form>
</body>
</html>
