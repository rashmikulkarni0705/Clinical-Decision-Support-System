<%@ Page Language="C#" MasterPageFile="~/physicianrules.master" AutoEventWireup="true" CodeFile="phyconfmed.aspx.cs" Inherits="phyconfmed" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    
    <br />
    
    
  <script type="text/javascript">
      function ConfirmationBox(MedicineName) {

          var result = confirm('Are you sure you want to delete ' + MedicineName + ' Details?');
          if (result) {

              return true;
          }
          else {
              return false;
          }
      }
</script>

  <div>
<asp:GridView ID="gvDetails" DataKeyNames="MedicineId,MedicineName" runat="server" 
        AutoGenerateColumns="false" CssClass="Gridview" HeaderStyle-BackColor="#61A6F8" 
ShowFooter="true" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" 
        onrowcancelingedit="gvDetails_RowCancelingEdit" 
        onrowdeleting="gvDetails_RowDeleting" onrowediting="gvDetails_RowEditing" 
        onrowupdating="gvDetails_RowUpdating" 
        onrowcommand="gvDetails_RowCommand" 
          onselectedindexchanged="gvDetails_SelectedIndexChanged" 
          HorizontalAlign="Center" Width="30%" 
        >
     
<Columns>
<asp:TemplateField>

<EditItemTemplate>
<asp:ImageButton ID="imgbtnUpdate" CommandName="Update" runat="server" 
        ImageUrl="~/update.jpg" ToolTip="Update" Height="20px" Width="20px" />
<asp:ImageButton ID="imgbtnCancel" runat="server" CommandName="Cancel" 
        ImageUrl="~/Cancel.jpg" ToolTip="Cancel" Height="20px" Width="20px" />
</EditItemTemplate>

<ItemTemplate>
<asp:ImageButton ID="imgbtnEdit" CommandName="Edit" runat="server" 
        ImageUrl="~/Edit.jpg" ToolTip="Edit" Height="20px" Width="20px" 
        onclick="imgbtnEdit_Click" />
<asp:ImageButton ID="imgbtnDelete" CommandName="Delete" Text="Edit" runat="server" 
        ImageUrl="~/delete.jpg" ToolTip="Delete" Height="20px" Width="20px" />
</ItemTemplate>

<FooterTemplate>
<asp:ImageButton ID="imgbtnAdd" runat="server" ImageUrl="~/AddNewitem.jpg" 
        CommandName="AddNew" Width="30px" Height="30px" ToolTip="Add new Medicine" 
        ValidationGroup="validaiton" />
</FooterTemplate>

</asp:TemplateField>

<asp:TemplateField HeaderText="MedicineName">

<EditItemTemplate>
<asp:TextBox ID="txtmed" runat="server" Text='<%#Eval("MedicineName") %>'/>
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemUsr" runat="server" Text='<%#Eval("MedicineName") %>'/>
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrusrname" runat="server"/>
<asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtftrusrname" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>
</Columns>

<HeaderStyle BackColor="#61A6F8" Font-Bold="True" ForeColor="White"></HeaderStyle>
</asp:GridView>

</div>

<div align="center">
<asp:Label ID="lblresult" runat="server"></asp:Label>
</div>
    
</asp:Content>

