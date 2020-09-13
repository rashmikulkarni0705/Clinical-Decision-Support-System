<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="patientacc.aspx.cs" Inherits="patientacc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 48%;
        }
        .style13
        {
            width: 719px;
            height: 23px;
        }
        .style17
        {
            height: 34px;
            width: 239px;
        }
        .style18
        {
            height: 35px;
            width: 239px;
        }
        .style19
        {
            width: 239px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table class="style13" align="center">
        <tr>
            <td align="right" class="style19">
                <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
            </td>
            <td align="left" class="style19">
                &nbsp;
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td align="left" class="style19" rowspan="6">
                <asp:Image ID="Image4" runat="server" Height="150px" ImageUrl="~/lc.png" 
                    Width="200px" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style17">
                <asp:Label ID="Label3" runat="server" Text="Old Password"></asp:Label>
            </td>
            <td align="left" class="style17">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style18">
                <asp:Label ID="Label4" runat="server" Text="New Password"></asp:Label>
            </td>
            <td align="left" class="style18">
                &nbsp;
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style19">
                <asp:Label ID="Label6" runat="server" Text="Confirm New Password"></asp:Label>
            </td>
            <td align="left" class="style19">
                &nbsp;
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style19">
                &nbsp;</td>
            <td align="left" class="style19">
                &nbsp;
                <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style19">
                &nbsp;</td>
            <td align="left" class="style19">
                &nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                    Width="79px" />
            </td>
        </tr>
    </table>
</asp:Content>