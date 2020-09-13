<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Databasemanage.aspx.cs" Inherits="Databasemanage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
    {
        width: 626px;
        height: 243px;
    }
    .style20
    {
        }
    .style21
    {
        height: 28px;
        width: 230px;
    }
        .style22
        {
            height: 28px;
            width: 111px;
        }
        .style23
        {
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style17">
    <tr>
        <td align="right" class="style20" colspan="2">
            &nbsp;</td>
        <td align="right" class="style20" rowspan="6">
            <asp:Image ID="Image4" runat="server" Height="197px" ImageUrl="~/d3.png" 
                Width="291px" />
        </td>
    </tr>
    <tr>
        <td align="right" class="style21">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Garamond" 
                Font-Size="Medium" Text="Enter Timestramp"></asp:Label>
        </td>
        <td class="style22">
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style20" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style20" colspan="2">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Garamond" 
                Font-Size="Medium" Text="Data cleaning" onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td align="center" class="style20" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style20" colspan="2">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Garamond" 
                Font-Size="Medium" ForeColor="#006600" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

