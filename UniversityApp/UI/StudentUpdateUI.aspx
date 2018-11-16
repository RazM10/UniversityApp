<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentUpdateUI.aspx.cs" Inherits="UniversityApp.UI.StudentUpdateUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form2" runat="server">
    <div>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Reg No"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="regNoTextBox" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="addressTextBox" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="depertmentTextBox" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="updateButton" runat="server" Text="Update" OnClick="saveButton_Click" />

            </td>
            <td>
                <asp:Button ID="deleteButton" runat="server" OnClick="deleteButton_Click" Text="Delete" />

            </td>
        </tr>
    </table>
        
    </div>
    </form>
</body>
</html>
