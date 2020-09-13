<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="newsupdate.aspx.cs" Inherits="newsupdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 65%;
            height: 149px;
        }
        .style16
        {
            width: 186px;
        }
        .style17
        {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style15">
        <tr>
            <td class="style16">
                <br />
            </td>
            <td class="style17">
                &nbsp;</td>
            <td rowspan="9">
                <asp:Image ID="Image4" runat="server" Height="221px" ImageUrl="~/ssa.png" 
                    Width="331px" />
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style16">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Medium" Text="Select Role"></asp:Label>
            </td>
            <td class="style17">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Administrator</asp:ListItem>
                    <asp:ListItem>Physician</asp:ListItem>
                    <asp:ListItem>Patient</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style16">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style16">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Medium" Text="Enter News"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox1" runat="server" Height="16px" TextMode="MultiLine" 
                    Width="169px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style16">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style16">
                &nbsp;</td>
            <td class="style17">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Medium" onclick="Button1_Click" Text="News Generate" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style16">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style16">
                &nbsp;</td>
            <td class="style17">
                <asp:Label ID="Label4" runat="server" ForeColor="#006600" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

