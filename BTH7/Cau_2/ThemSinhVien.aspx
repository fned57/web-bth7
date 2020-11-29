<%@ Page Title="" Language="C#" MasterPageFile="~/Cau_2/Site1.Master" AutoEventWireup="true" CodeBehind="ThemSinhVien.aspx.cs" Inherits="BTH7.Cau_2.ThemSinhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:auto;text-align:center"><asp:Button ID="Button1" runat="server" Text="XEM DANH SÁCH SINH VIÊN" OnClick="Button1_Click" BorderStyle="None" BackColor="White" BorderColor="White" ForeColor="#00CC00" />
   </div>
     <table style="width: 50%;margin:auto">
        <tr>
            <td>Mã Sinh Viên:</td>
            <td>
                <asp:TextBox ID="TxtMaSo" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>Họ Và Tên:</td>
            <td>
                <asp:TextBox ID="TxtHoTen" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>Lớp:</td>
            <td>
                <asp:DropDownList ID="listLop" runat="server">
                </asp:DropDownList>
            </td>
           
        </tr>
        <tr>
            <td>Tỉnh:</td>
            <td>
                <asp:DropDownList ID="listTinh" runat="server">
                </asp:DropDownList>
            </td>
           
        </tr>
         <tr>
            <td>Điện Thoại</td>
            <td>
                <asp:TextBox ID="TxtDienThoai" runat="server" TextMode="Phone"></asp:TextBox>
             </td>
           
        </tr>
        <tr>
            <td>Hình Ảnh</td>
            <td>
                <asp:FileUpload ID="FileUpload" runat="server" />
            </td>
           
        </tr>
        <tr>

            <td colspan="2" style="text-align:center">
                <asp:Button ID="btnTHem" runat="server" OnClick="btnTHem_Click" Text="Thêm" />
                <asp:Button ID="btnxoa" runat="server" OnClick="btnxoa_Click" Text="Xóa" />
            </td>
           
        </tr>
       
        
    </table>
    
</asp:Content>
