<%@ Page Title="" Language="C#" MasterPageFile="~/physician2.master" AutoEventWireup="true" CodeFile="visitdetails.aspx.cs" Inherits="visitdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server" >
<div align="center">
    <asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <EditRowStyle Height="300px" Width="300px" />
        <HeaderStyle BackColor="#61A6F8" BorderColor="Black" BorderStyle="None" 
            ForeColor="White" />
        <RowStyle Height="25px" Width="500px" />
    </asp:GridView>
    <br/>
    <asp:Button ID="Button1" runat="server" Text="Create New Visit" 
        Font-Bold="True" onclick="Button1_Click" />
    </div>
</asp:Content>

