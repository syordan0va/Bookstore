<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="ZaVrazkaSNas" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 59%">
        <tr>
            <td style="text-align: center; width: 135px; height: 41px">
                <asp:Label ID="Label2" runat="server" meta:resourcekey="Label2Resource1" Text="До:"></asp:Label>
            </td>
            <td style="width: 422px; height: 41px">
                <asp:TextBox ID="MailFrom" runat="server" Height="19px" Width="310px" meta:resourcekey="MailFromResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; width: 135px; height: 41px">
                <asp:Label ID="Label3" runat="server" meta:resourcekey="Label3Resource1" Text="От:"></asp:Label>
            </td>
            <td style="width: 422px; height: 41px">
                <asp:TextBox ID="MailTo" runat="server" Height="19px" Width="310px" meta:resourcekey="MailToResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; width: 135px; height: 42px">
                <asp:Label ID="Label4" runat="server" meta:resourcekey="Label4Resource1" Text="Отностно:"></asp:Label>
            </td>
            <td style="width: 422px; height: 42px">
                <asp:TextBox ID="Subject" runat="server" Height="19px" Width="310px" meta:resourcekey="SubjectResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; height: 125px; width: 135px">
                <asp:Label ID="Label5" runat="server" meta:resourcekey="Label5Resource1" Text="Запитване:"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td style="height: 125px; width: 422px">
                <asp:TextBox ID="Body" runat="server" Height="137px" TextMode="MultiLine" Width="310px" meta:resourcekey="BodyResource1"></asp:TextBox>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Изпрати" Width="97px" meta:resourcekey="Button1Resource1" BackColor="#FFFFCC" BorderColor="#FFCC66" Font-Bold="True" ForeColor="#990000" Height="29px" style="margin-left: 0px" />
    <br />
    <asp:Label ID="MailMsg" runat="server" ForeColor="#F00F25" meta:resourcekey="MailMsgResource1"></asp:Label>
&nbsp;&nbsp;
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

