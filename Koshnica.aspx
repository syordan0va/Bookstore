<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Koshnica.aspx.cs" Inherits="Koshnica" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" meta:resourcekey="Label2Resource1" Text="Във вашата кошница има:"></asp:Label>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" meta:resourcekey="DataList1Resource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" meta:resourcekey="Image1Resource1" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' />
            BookID:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabelResource1" />
            <br />
            BookTitle:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' meta:resourcekey="PriceLabelResource1" />
            <br />
            Qty:
            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' meta:resourcekey="QtyLabelResource1" />
            <br />
            Suma:
            <asp:Label ID="SumaLabel" runat="server" Text='<%# Eval("Suma") %>' meta:resourcekey="SumaLabelResource1" />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Отбележете за премахване" meta:resourcekey="CheckBox1Resource1" />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT BookID, BookTitle, Price, SUM(Qty) AS Qty, SUM(Qty * Price) AS Suma FROM ShopCart GROUP BY BookID, BookTitle, Price"></asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Изтриване на маркираните книги" meta:resourcekey="Button1Resource1" BackColor="#FFFFCC" BorderColor="#FFCC66" Font-Bold="True" ForeColor="#990000" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" meta:resourcekey="GridView1Resource1">
        <Columns>
            <asp:BoundField DataField="suma" HeaderText="suma" ReadOnly="True" SortExpression="suma" meta:resourcekey="BoundFieldResource1" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT SUM(Qty * Price) AS suma FROM ShopCart"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

