<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="deneme.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfCustomertID" runat="server" />
            <table>

                <tr>
                    <td>
                        <asp:Label ID="lblCustomerName" runat="server" Text="CustomerName"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTelephone" runat="server" Text="Telephone"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtTelephone" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                      
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
      
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblSuccesMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
      
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <br/>
            <asp:GridView ID="gvCustomer" runat="server" AutoGenerateColumns="False">
                
                <Columns>
                    <asp:BoundField DataField="CustomerName" HeaderText="Customer Name"/>
                    <asp:BoundField DataField="Email" HeaderText="Email"/>
                    <asp:BoundField DataField="Telephone" HeaderText="Telephone"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%#Eval("CustomerID") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
