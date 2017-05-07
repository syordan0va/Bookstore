<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlDetails.ascx.cs" Inherits="WebUserControlDetails" %>
<p>
    Книга№
    <asp:Label ID="lblBookID" runat="server"></asp:Label>
    <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" />
    <br />
    Заглавие:<asp:Label ID="lblBookTitle" runat="server"></asp:Label>
    <br />
    Цена:<asp:Label ID="lblBookPrice" runat="server"></asp:Label>
    <br />
    Количество:<asp:Label ID="lblBookQuantity" runat="server"></asp:Label>
    <br />
    Сума:<asp:Label ID="lblAmount" runat="server"></asp:Label>
&nbsp;<br />
    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text=" Отбелижи за купуване" />
</p>

