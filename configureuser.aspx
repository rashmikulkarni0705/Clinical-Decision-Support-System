<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="configureuser.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 134%;
        height: 2px;
    }
    .style2
    {
        width: 719px;
            height: 198px;
        }
        .style9
        {
            height: 0.7cm;
        }
        .style10
        {
            
            height: 0.7cm;
        }
        .style21
        {
            width: 239px;
        }
        .style26
        {
            height: 0.7cm;
            width: 239px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
    <tr>
        <td class="style21" rowspan="9">
            <asp:Image ID="Image4" runat="server" Height="150px" ImageUrl="~/user.jpg" 
                Width="150px" />
        </td>
        <td class="style21">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Garamond" 
                Font-Size="Large" Text="Select Role"></asp:Label>
        </td>
        <td class="style21">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="RoleName" 
                DataValueField="RoleName" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [RoleName] FROM [Role]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style26">
            </td>
        <td class="style26">
            </td>
    </tr>
    <tr>
        <td class="style21">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Garamond" 
                Font-Size="Large" Text="Enter Username"></asp:Label>
            &nbsp;</td>
        <td class="style21">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style26">
           </td>
        <td class="style26">
           </td>
    </tr>
    <tr>
        <td class="style21">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Garamond" 
                Font-Size="Large" Text="Enter Password"></asp:Label>
        </td>
        <td class="style21" >
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style26">
           </td>
        <td class="style26">
            </td>
    </tr>
    <tr>
        <td class="style21">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Garamond" 
                Font-Size="Large" Text="Confirm Password"></asp:Label>
        </td>
        <td class="style21">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td class="style26">
           </td>
        <td class="style26">
            </td>
        </tr>
    <tr>
        <td class="style26">
<asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Garamond" 
    Font-Size="Large" Height="37px" Text="Confirm" Width="104px" 
        onclick="Button1_Click" />
         </td>
        <td class="style26">
<asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Garamond" 
    Font-Size="Large" Height="39px" Text="Reset" Width="103px" 
        onclick="Button2_Click" />
            </td>
    </tr>
</table>
<br />
<br />
</asp:Content>

