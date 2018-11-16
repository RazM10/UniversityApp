<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexUI.aspx.cs" Inherits="UniversityApp.UI.IndexUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink runat="server" NavigateUrl="StudentEntryUI.aspx">Student Entry</asp:HyperLink>
        <br/>
        <br/>
        <asp:HyperLink runat="server" NavigateUrl="StudentDetailsUI.aspx">Student Details</asp:HyperLink>
    </div>
    </form>
</body>
</html>
