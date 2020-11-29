<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucMenu.ascx.cs" Inherits="BTH7.Control.ucMenu" %>
<style>
    button{
        color:red;
        background-color:#ffd800;
    }
    .auto-style1 {
        height: 34px;
    }

</style>
<div style="background-color:#ffd800;" class="auto-style1">
    <table style="width: 50%;float:left">
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Trang chủ"  BorderStyle="None" BackColor="#FFD800" BorderColor="#FFD800" ForeColor="Red" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Sản phẩm"  BorderStyle="None" BackColor="#FFD800" BorderColor="#FFD800" ForeColor="Red" />
            </td>    
            <td>
                <asp:Button ID="Button4" runat="server" Text="Tin tức"  BorderStyle="None" BackColor="#FFD800" BorderColor="#FFD800" ForeColor="Red" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Giới thiệu" BorderStyle="None" BackColor="#FFD800" BorderColor="#FFD800" ForeColor="Red" />
            <td>
                <asp:Button ID="Button6" runat="server" Text="Liên hệ"  BorderStyle="None" BackColor="#FFD800" BorderColor="#FFD800" ForeColor="Red" />
           
        </tr>
       
    </table>
    <table style="width: 20%;float:right">
           <tr >
                <td style="width:80%">
                    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
               </td>
               <td style="width:10%">
                   <asp:Button ID="Button1" runat="server" Text="Dang Nhap" OnClick="danhnhap" BorderStyle="None" BackColor="#FFD800" BorderColor="#FFD800" ForeColor="Red" />
               </td>
        </tr>
    </table>
</div>
<div style="clear:both"></div>
