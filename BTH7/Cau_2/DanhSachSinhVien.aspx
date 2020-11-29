<%@ Page Title="" Language="C#" MasterPageFile="~/Cau_2/Site1.Master" AutoEventWireup="true" CodeBehind="DanhSachSinhVien.aspx.cs" Inherits="BTH7.Cau_2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p style="color:red;text-align:center">DANH SÁCH SINH VIÊN KHÓA 56 NGÀNH CÔNG NGHỆ THÔNG TIN</p>
        <div style="margin:auto;text-align:center"><asp:Button ID="Button1" runat="server" Font-Overline="True" OnClick="Button1_Click" Text="Thêm Sinh Viên" BorderStyle="None" BackColor="#66FF66" BorderColor="White" ForeColor="Red"/>
        </div>
        
        <asp:DataList ID="DataList1" runat="server"  CssClass="danhsachsinhvien" CaptionAlign="Right" HorizontalAlign="Left" RepeatColumns="4">
             <ItemTemplate>
           <div  class="sinhvien">
               <p>Mã số sinh viên : <%#Eval("masv") %></p>
                <p>Họ và tên: <%#Eval("hoTen") %></p>
                <p>Lớp: <%#Eval("lop1") %></p>
                <p>Tỉnh: <%#Eval("tinh") %></p>
                <p>Diện thoại: <%#Eval("dienThoai") %></p>
               <img src="images\\<%#Eval("hinhAnh") %>" />
           </div>
       </ItemTemplate>
        </asp:DataList>
    </div>

    </asp:Content>
