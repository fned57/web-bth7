<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BTH7.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 32%;">
        <tr>
            <td style="width: 146px">Use</td>
            <td style="width: 556px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">Pass</td>
            <td style="width: 556px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  Text="Đăng Nhập" CssClass="auto-style1" />
            </td>
        </tr>
    </table>
</asp:Content>
