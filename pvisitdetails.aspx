<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="pvisitdetails.aspx.cs" Inherits="pvisitdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%"  >
        <EditRowStyle Height="300px" Width="300px" />
        <HeaderStyle BackColor="#61A6F8" BorderColor="Black" ForeColor="White" />
        <RowStyle Height="25px" Width="500px" />
 
    </asp:GridView>

</asp:Content>

