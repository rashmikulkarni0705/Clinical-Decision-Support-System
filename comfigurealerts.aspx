<%@ Page Title="" Language="C#" MasterPageFile="~/physicianrules.master" AutoEventWireup="true" CodeFile="comfigurealerts.aspx.cs" Inherits="comfigurealerts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
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

<asp:GridView ID="gvDetails" 
        DataKeyNames="AlertId,MedicineName1,MedicineName2,Remark" runat="server" 
        AutoGenerateColumns="false" CssClass="Gridview" HeaderStyle-BackColor="#61A6F8" 
ShowFooter="true" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" 
        onrowcancelingedit="gvDetails_RowCancelingEdit" 
        onrowdeleting="gvDetails_RowDeleting" onrowediting="gvDetails_RowEditing" 
        onrowupdating="gvDetails_RowUpdating" 
        onrowcommand="gvDetails_RowCommand" 
          onselectedindexchanged="gvDetails_SelectedIndexChanged" 
          HorizontalAlign="Center" Width="49%" Height="79px" 
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

<asp:TemplateField HeaderText="MedicineName1">

<ItemTemplate>
<asp:Label ID="lblitemUsr1" runat="server" Text='<%#Eval("MedicineName1") %>'/>
</ItemTemplate>


<FooterTemplate>
    <asp:DropDownList ID="DropDownList3" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="MedicineName" 
        DataValueField="MedicineName">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [MedicineName] FROM [MedicineList] ORDER BY [MedicineName]">
    </asp:SqlDataSource>
<asp:RequiredFieldValidator ID="rfvusername1" runat="server" 
        ControlToValidate="DropDownList3" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="MedicineName2">

<ItemTemplate>
<asp:Label ID="lblitemUsr2" runat="server" Text='<%#Eval("MedicineName2") %>'/>
</ItemTemplate>

    
<FooterTemplate>
    <asp:DropDownList ID="DropDownList4" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="MedicineName" 
        DataValueField="MedicineName">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [MedicineName] FROM [MedicineList] ORDER BY [MedicineName]">
    </asp:SqlDataSource>
<asp:RequiredFieldValidator ID="rfvusername2" runat="server" 
        ControlToValidate="DropDownList4" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>
<asp:TemplateField HeaderText="Remark">

<EditItemTemplate>
<asp:TextBox ID="txtmed3" runat="server" Text='<%#Eval("Remark") %>'/>
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemUsr3" runat="server" Text='<%#Eval("Remark") %>'/>
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrusrname3" runat="server"/>
<asp:RequiredFieldValidator ID="rfvusername3" runat="server" ControlToValidate="txtftrusrname3" Text="*" ValidationGroup="validation"/>
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

