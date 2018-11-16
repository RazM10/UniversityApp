<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetailsUI.aspx.cs" Inherits="UniversityApp.UI.StudentDetailsUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="studetGridView" runat="server" AutoGenerateColumns="False">
            <Columns>
                
                <asp:TemplateField HeaderText="Reg. No">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("RegNo") %>'></asp:Label>
                        <asp:HiddenField ID="HiddenFieldId" runat="server" Value='<%#Eval("Id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Department">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Department") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton_click" runat="server" OnClick="LinkButton_click_OnClick">Update</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton_Delete" runat="server" OnClick="LinkButton_click_OnClick1">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
             </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
