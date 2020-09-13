<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminacc.aspx.cs" Inherits="adminacc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 85%;
        }
        .style3
        {
            height: 45px;
        }
        .style4
        {
            height: 35px;
        }
        .style5
        {
            height: 34px;
        }
        .style9
        {
            width: 100%;
        }
        .style10
        {
            width: 207px;
        }
        .style11
        {
            width: 580px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style9">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
    <table class="style2">
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
            </td>
            <td align="center" class="style3">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style5">
                <asp:Label ID="Label3" runat="server" Text="Old Password"></asp:Label>
            </td>
            <td align="center" class="style5">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label4" runat="server" Text="New Password"></asp:Label>
            </td>
            <td align="center" class="style4">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                <asp:Label ID="Label6" runat="server" Text="Confirm New Password"></asp:Label>
            </td>
            <td align="center" class="style3">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td align="center" class="style3">
                <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3">
                &nbsp;</td>
            <td align="left" class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                    Width="79px" />
            </td>
        </tr>
    </table>
            </td>
            <td align="center">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/lc.png" Width="196px" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

