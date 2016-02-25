<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
            </hgroup>
         
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>QLBH</h3>
    <ol class="round">
        <li class="one">
            <h5>Chi Tiết Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHoaDon" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="MaHoaDon" HeaderText="MaHoaDon" ReadOnly="True" SortExpression="MaHoaDon" />
                    <asp:BoundField DataField="MaSanPham" HeaderText="MaSanPham" SortExpression="MaSanPham" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tiennmph03697_QLBHConnectionString %>" DeleteCommand="DELETE FROM [Chi_Tiet_Hoa_Don] WHERE [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [Chi_Tiet_Hoa_Don] ([MaHoaDon], [MaSanPham], [SoLuong]) VALUES (@MaHoaDon, @MaSanPham, @SoLuong)" SelectCommand="SELECT [MaHoaDon], [MaSanPham], [SoLuong] FROM [Chi_Tiet_Hoa_Don]" UpdateCommand="UPDATE [Chi_Tiet_Hoa_Don] SET [MaSanPham] = @MaSanPham, [SoLuong] = @SoLuong WHERE [MaHoaDon] = @MaHoaDon">
                <DeleteParameters>
                    <asp:Parameter Name="MaHoaDon" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHoaDon" Type="String" />
                    <asp:Parameter Name="MaSanPham" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaSanPham" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="String" />
                    <asp:Parameter Name="MaHoaDon" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
        </li>
        <li class="two">
                        <h5>Hóa Đơn</h5>

            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="MaKhachHang" HeaderText="MaKhachHang" SortExpression="MaKhachHang" />
                    <asp:BoundField DataField="NgayMua" HeaderText="NgayMua" SortExpression="NgayMua" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tiennmph03697_QLBHConnectionString %>" DeleteCommand="DELETE FROM [Hoa_Don] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [Hoa_Don] ([MaHD], [MaKhachHang], [NgayMua]) VALUES (@MaHD, @MaKhachHang, @NgayMua)" SelectCommand="SELECT [MaHD], [MaKhachHang], [NgayMua] FROM [Hoa_Don]" UpdateCommand="UPDATE [Hoa_Don] SET [MaKhachHang] = @MaKhachHang, [NgayMua] = @NgayMua WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="MaKhachHang" Type="String" />
                    <asp:Parameter Name="NgayMua" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaKhachHang" Type="String" />
                    <asp:Parameter Name="NgayMua" Type="DateTime" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </li>
        <li class="three">
            <h5>Khách Hàng</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                    <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:tiennmph03697_QLBHConnectionString %>" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [Khach_Hang] ([MaKH], [HoTen], [Email], [SDT], [DiaChi]) VALUES (@MaKH, @HoTen, @Email, @SDT, @DiaChi)" SelectCommand="SELECT [MaKH], [HoTen], [Email], [SDT], [DiaChi] FROM [Khach_Hang]" UpdateCommand="UPDATE [Khach_Hang] SET [HoTen] = @HoTen, [Email] = @Email, [SDT] = @SDT, [DiaChi] = @DiaChi WHERE [MaKH] = @MaKH">
                <DeleteParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </li>
        <li class="four">
            <h5>Mã Loại Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLoaiSanPham" DataSourceID="SqlDataSource4">
                <Fields>
                    <asp:BoundField DataField="MaLoaiSanPham" HeaderText="MaLoaiSanPham" ReadOnly="True" SortExpression="MaLoaiSanPham" />
                    <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>

            
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:tiennmph03697_QLBHConnectionString %>" DeleteCommand="DELETE FROM [Loai_San_Pham] WHERE [MaLoaiSanPham] = @MaLoaiSanPham" InsertCommand="INSERT INTO [Loai_San_Pham] ([MaLoaiSanPham], [TenLoai]) VALUES (@MaLoaiSanPham, @TenLoai)" SelectCommand="SELECT [MaLoaiSanPham], [TenLoai] FROM [Loai_San_Pham]" UpdateCommand="UPDATE [Loai_San_Pham] SET [TenLoai] = @TenLoai WHERE [MaLoaiSanPham] = @MaLoaiSanPham">
                <DeleteParameters>
                    <asp:Parameter Name="MaLoaiSanPham" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLoaiSanPham" Type="String" />
                    <asp:Parameter Name="TenLoai" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLoai" Type="String" />
                    <asp:Parameter Name="MaLoaiSanPham" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

            
        </li>
        <li class="five">
            <h5>Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="MaSanPham" HeaderText="MaSanPham" ReadOnly="True" SortExpression="MaSanPham" />
                    <asp:BoundField DataField="MaLoaiSanPham" HeaderText="MaLoaiSanPham" SortExpression="MaLoaiSanPham" />
                    <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
                    <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                    <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:tiennmph03697_QLBHConnectionString %>" DeleteCommand="DELETE FROM [San_Pham] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [San_Pham] ([MaSanPham], [MaLoaiSanPham], [Ten], [Gia], [MoTa]) VALUES (@MaSanPham, @MaLoaiSanPham, @Ten, @Gia, @MoTa)" SelectCommand="SELECT [MaSanPham], [MaLoaiSanPham], [Ten], [Gia], [MoTa] FROM [San_Pham]" UpdateCommand="UPDATE [San_Pham] SET [MaLoaiSanPham] = @MaLoaiSanPham, [Ten] = @Ten, [Gia] = @Gia, [MoTa] = @MoTa WHERE [MaSanPham] = @MaSanPham">
                <DeleteParameters>
                    <asp:Parameter Name="MaSanPham" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSanPham" Type="String" />
                    <asp:Parameter Name="MaLoaiSanPham" Type="String" />
                    <asp:Parameter Name="Ten" Type="String" />
                    <asp:Parameter Name="Gia" Type="Decimal" />
                    <asp:Parameter Name="MoTa" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaLoaiSanPham" Type="String" />
                    <asp:Parameter Name="Ten" Type="String" />
                    <asp:Parameter Name="Gia" Type="Decimal" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="MaSanPham" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </li>

    </ol>
</asp:Content>
