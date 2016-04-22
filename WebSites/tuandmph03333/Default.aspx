<%@ Page Title="Trang chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  <div class="row" align="Center" style="border:1px dotted #674747;padding-bottom:20px;">
  <div class="col-md-6">
      <h2>Chi Tiết Hóa Đơn</h2>
      <asp:DetailsView ID="DetailsView1" runat="server" Height="100px" Width="60%" AutoGenerateRows="False" DataKeyNames="MaCTHD" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal">
          <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
          <EditRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black"></EditRowStyle>
          <Fields>
              <asp:BoundField DataField="MaCTHD" HeaderText="MaCTHD" ReadOnly="True" SortExpression="MaCTHD"></asp:BoundField>
              <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD"></asp:BoundField>
              <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP"></asp:BoundField>
              <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong"></asp:BoundField>
              <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True" DeleteText="X&#243;a" EditText="Sửa" InsertText="Th&#234;m" NewText="Th&#234;m" UpdateText="Cập Nhật" CancelText="Bỏ qua" SelectText="Chọn">
                  <ItemStyle HorizontalAlign="Center" ForeColor="Black"></ItemStyle>
              </asp:CommandField>
          </Fields>
          <FooterStyle BackColor="#CCCCCC"></FooterStyle>
          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>
          <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>
      </asp:DetailsView>

      <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:tuandmph03333_createConnectionString %>' DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaCTHD] = @MaCTHD" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaCTHD], [MaHD], [MaSP], [SoLuong]) VALUES (@MaCTHD, @MaHD, @MaSP, @SoLuong)" SelectCommand="SELECT [MaCTHD], [MaHD], [MaSP], [SoLuong] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [MaHD] = @MaHD, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [MaCTHD] = @MaCTHD">
          <DeleteParameters>
              <asp:Parameter Name="MaCTHD" Type="Int32"></asp:Parameter>
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="MaCTHD" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="MaCTHD" Type="Int32"></asp:Parameter>
          </UpdateParameters>
      </asp:SqlDataSource>
  </div>
  <div class="col-md-6">
        <h2>Hóa Đơn</h2>
      <asp:DetailsView ID="DetailsView2" runat="server" Height="100px" Width="60%" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource2" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal">
          <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>

          <EditRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black"></EditRowStyle>
          <Fields>
              <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD"></asp:BoundField>
              <asp:BoundField DataField="SoHD" HeaderText="SoHD" SortExpression="SoHD"></asp:BoundField>
              <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH"></asp:BoundField>
              <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True" CancelText="Bỏ qua" DeleteText="X&#243;a" EditText="Sửa" InsertText="Th&#234;m" NewText="Th&#234;m" SelectText="Chọn" UpdateText="Cập Nhật">
                  <ItemStyle HorizontalAlign="Center" ForeColor="Black"></ItemStyle>
              </asp:CommandField>
          </Fields>
          <FooterStyle BackColor="#CCCCCC"></FooterStyle>

          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

          <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>
      </asp:DetailsView>
      <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:tuandmph03333_createConnectionString %>' DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [SoHD], [MaKH]) VALUES (@MaHD, @SoHD, @MaKH)" SelectCommand="SELECT [MaHD], [SoHD], [MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [SoHD] = @SoHD, [MaKH] = @MaKH WHERE [MaHD] = @MaHD">
          <DeleteParameters>
              <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="SoHD" Type="String"></asp:Parameter>
              <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="SoHD" Type="String"></asp:Parameter>
              <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
          </UpdateParameters>
      </asp:SqlDataSource>
  </div>
</div>

<div class="row" align="center" style="border:1px dotted #674747;padding-bottom:20px;margin-top:20px;">
  <div class="col-md-6">
     

      <h2>Khách Hàng</h2>
      <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="60%" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource3" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal">
          <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>

          <EditRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black"></EditRowStyle>
          <Fields>
              <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH"></asp:BoundField>
              <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH"></asp:BoundField>
              <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
              <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi"></asp:BoundField>
              <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai"></asp:BoundField>
              <asp:CommandField CancelText="Bỏ qua" DeleteText="X&#243;a" EditText="Sửa" InsertText="Th&#234;m" NewText="Th&#234;m" SelectText="Chọn" UpdateText="Cập Nhật" ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True" Visible="True">
                   <ItemStyle HorizontalAlign="Center" ForeColor="Black"></ItemStyle>
              </asp:CommandField>
          </Fields>
          <FooterStyle BackColor="#CCCCCC"></FooterStyle>

          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

          <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>
      </asp:DetailsView>
      <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:tuandmph03333_createConnectionString %>' DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [Email], [DiaChi], [DienThoai]) VALUES (@MaKH, @TenKH, @Email, @DiaChi, @DienThoai)" SelectCommand="SELECT [MaKH], [TenKH], [Email], [DiaChi], [DienThoai] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [Email] = @Email, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai WHERE [MaKH] = @MaKH">
          <DeleteParameters>
              <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="TenKH" Type="String"></asp:Parameter>
              <asp:Parameter Name="Email" Type="String"></asp:Parameter>
              <asp:Parameter Name="DiaChi" Type="String"></asp:Parameter>
              <asp:Parameter Name="DienThoai" Type="String"></asp:Parameter>
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="TenKH" Type="String"></asp:Parameter>
              <asp:Parameter Name="Email" Type="String"></asp:Parameter>
              <asp:Parameter Name="DiaChi" Type="String"></asp:Parameter>
              <asp:Parameter Name="DienThoai" Type="String"></asp:Parameter>
              <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
          </UpdateParameters>
      </asp:SqlDataSource>
  </div>
  <div class="col-md-6">
      <h2>Loại Sản Phẩm</h2>
      <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="60%" AutoGenerateRows="False" DataKeyNames="MaLoai" DataSourceID="SqlDataSource4" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal">
          <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>

          <EditRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black"></EditRowStyle>
          <Fields>
              <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" ReadOnly="True" SortExpression="MaLoai"></asp:BoundField>
              <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai"></asp:BoundField>
              <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong"></asp:BoundField>
              <asp:BoundField DataField="DonViTinh" HeaderText="DonViTinh" SortExpression="DonViTinh"></asp:BoundField>
              <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True" CancelText="Bỏ qua" DeleteText="X&#243;a" EditText="Sửa" InsertText="Th&#234;m" NewText="Th&#234;m" SelectText="Chọn" UpdateText="Cập Nhật">
                  <ItemStyle HorizontalAlign="Center" ForeColor="Black"></ItemStyle>
              </asp:CommandField>
          </Fields>
          <FooterStyle BackColor="#CCCCCC"></FooterStyle>

          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

          <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>
      </asp:DetailsView>

      <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:tuandmph03333_createConnectionString %>' DeleteCommand="DELETE FROM [LoaiHang] WHERE [MaLoai] = @MaLoai" InsertCommand="INSERT INTO [LoaiHang] ([MaLoai], [TenLoai], [SoLuong], [DonViTinh]) VALUES (@MaLoai, @TenLoai, @SoLuong, @DonViTinh)" SelectCommand="SELECT [MaLoai], [TenLoai], [SoLuong], [DonViTinh] FROM [LoaiHang]" UpdateCommand="UPDATE [LoaiHang] SET [TenLoai] = @TenLoai, [SoLuong] = @SoLuong, [DonViTinh] = @DonViTinh WHERE [MaLoai] = @MaLoai">
          <DeleteParameters>
              <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="TenLoai" Type="String"></asp:Parameter>
              <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="DonViTinh" Type="String"></asp:Parameter>
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="TenLoai" Type="String"></asp:Parameter>
              <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="DonViTinh" Type="String"></asp:Parameter>
              <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
          </UpdateParameters>
      </asp:SqlDataSource>
  </div>
</div>
 <div class="row" align="center" style="border:1px dotted #674747;padding-bottom:20px;margin-top:5%;">
       <h2>Sản Phẩm</h2>
      <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="60%" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource5" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Horizontal">
          <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>

          <EditRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black"></EditRowStyle>
          <Fields>
              <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP"></asp:BoundField>
              <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai"></asp:BoundField>
              <asp:BoundField DataField="DonViTinh" HeaderText="DonViTinh" SortExpression="DonViTinh"></asp:BoundField>
              <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP"></asp:BoundField>
              <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia"></asp:BoundField>
              <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa"></asp:BoundField>
              <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong"></asp:BoundField>
              <asp:CommandField ShowInsertButton="True" ShowDeleteButton="True" ShowEditButton="True" CancelText="Bỏ qua" DeleteText="X&#243;a" EditText="Sửa" InsertText="Th&#234;m" NewText="Th&#234;m" UpdateText="Cập Nhật"><ItemStyle HorizontalAlign="Center" ForeColor="Black"></ItemStyle></asp:CommandField>
          </Fields>
          <FooterStyle BackColor="#CCCCCC"></FooterStyle>

          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

          <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>
      </asp:DetailsView>
      <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:tuandmph03333_createConnectionString %>' DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaLoai], [DonViTinh], [TenSP], [Gia], [MoTa], [SoLuong]) VALUES (@MaSP, @MaLoai, @DonViTinh, @TenSP, @Gia, @MoTa, @SoLuong)" SelectCommand="SELECT [MaSP], [MaLoai], [DonViTinh], [TenSP], [Gia], [MoTa], [SoLuong] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoai] = @MaLoai, [DonViTinh] = @DonViTinh, [TenSP] = @TenSP, [Gia] = @Gia, [MoTa] = @MoTa, [SoLuong] = @SoLuong WHERE [MaSP] = @MaSP">
          <DeleteParameters>
              <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="DonViTinh" Type="String"></asp:Parameter>
              <asp:Parameter Name="TenSP" Type="String"></asp:Parameter>
              <asp:Parameter Name="Gia" Type="Decimal"></asp:Parameter>
              <asp:Parameter Name="MoTa" Type="String"></asp:Parameter>
              <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="DonViTinh" Type="String"></asp:Parameter>
              <asp:Parameter Name="TenSP" Type="String"></asp:Parameter>
              <asp:Parameter Name="Gia" Type="Decimal"></asp:Parameter>
              <asp:Parameter Name="MoTa" Type="String"></asp:Parameter>
              <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
              <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
          </UpdateParameters>
      </asp:SqlDataSource>
</div>
</asp:Content>
