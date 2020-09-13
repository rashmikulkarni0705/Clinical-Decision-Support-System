<%@ Page Language="C#" MasterPageFile="~/physician.master" AutoEventWireup="true" CodeFile="PatientList.aspx.cs" Inherits="PatientList" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="style10" align="center" style="width: 70%; margin-top: 1cm;">
        <tr>
            <td class="style16" align="center" rowspan="5">
                <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl="~/aa.png" />
            </td>
            <td class="style17" align="center">
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Enter Name" Font-Bold="True" 
                    Font-Names="Garamond" ForeColor="Black"></asp:Label>
            </td>
            <td class="style17">
                &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label3" runat="server" Text="Enter MRN" Font-Bold="True" 
                    Font-Names="Garamond" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text=" Search" 
                    BackColor="Silver" Font-Bold="True" Font-Names="Garamond" Font-Size="Large" 
                    ForeColor="Black" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br/>
    
  <script type="text/javascript">
      function ConfirmationBox(FirstName) {

          var result = confirm('Are you sure you want to delete ' + FirstName + ' Details?');
          if (result) {

              return true;
          }
          else {
              return false;
          }
      }
</script>

  <div style="width: 100%">
<asp:GridView ID="gvDetails" 
          
          
          DataKeyNames="PatientId,MRN,SSN,FirstName,LastName,Address,City,State,Country,ZipCode,DOB,Gender,ContactNo,Email,BloodGroup,RaceId,LanguageId" runat="server" 
        AutoGenerateColumns="False" CssClass="Gridview" HeaderStyle-BackColor="#61A6F8" 
ShowFooter="True" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" 
        onrowcancelingedit="gvDetails_RowCancelingEdit" 
        onrowdeleting="gvDetails_RowDeleting" onrowediting="gvDetails_RowEditing" 
        onrowupdating="gvDetails_RowUpdating" 
        onrowcommand="gvDetails_RowCommand" Height="100%" Width="70%" OnSelectedIndexChanged="search"
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
        ImageUrl="~/Edit.jpg" ToolTip="Edit" Height="20px" Width="20px" />
<asp:ImageButton ID="imgbtnDelete" CommandName="Delete" runat="server" 
        ImageUrl="~/delete.jpg" ToolTip="Delete" Height="20px" Width="20px" />
</ItemTemplate>

<FooterTemplate>
<asp:ImageButton ID="imgbtnAdd" runat="server" ImageUrl="~/AddNewitem.jpg" 
        CommandName="AddNew" Width="50px" Height="40px" ToolTip="Add new Medicine" 
        ValidationGroup="validaiton" />
</FooterTemplate>

</asp:TemplateField>


    <asp:CommandField ShowSelectButton="True" />


<asp:TemplateField HeaderText="MRN">

<EditItemTemplate>
<asp:Textbox ID="txtmrn" runat="server" Text='<%#Eval("MRN") %>' Width="40px"/>
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemmrn" runat="server" Text='<%#Eval("MRN") %>' Width="40px" CommandName="Select" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrmrn" runat="server" Width="40px" />
<asp:RequiredFieldValidator ID="rfvmrn" runat="server" ControlToValidate="txtftrmrn" Text="*" ValidationGroup="validation" Width="30px" />
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="SSN">

<EditItemTemplate>
<asp:TextBox ID="txtssn" runat="server" Text='<%#Eval("SSN") %>' Width="40px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemssn" runat="server" Text='<%#Eval("SSN") %>' Width="40px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrssn" runat="server" Width="40px" />
<asp:RequiredFieldValidator ID="rfvssn" runat="server" ControlToValidate="txtftrssn" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="FirstName">

<EditItemTemplate>
<asp:TextBox ID="txtfirst" runat="server" Text='<%#Eval("FirstName") %>' Width="70px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemfirst" runat="server" Text='<%#Eval("FirstName") %>' Width="70px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrfirst" runat="server" Width="70px" />
<asp:RequiredFieldValidator ID="rfvfirst" runat="server" ControlToValidate="txtftrfirst" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="LastName">

<EditItemTemplate>
<asp:TextBox ID="txtlast" runat="server" Text='<%#Eval("LastName") %>' Width="70px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemlast" runat="server" Text='<%#Eval("LastName") %>' Width="70px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrlast" runat="server" Width="70px" />
<asp:RequiredFieldValidator ID="rfvlast" runat="server" ControlToValidate="txtftrlast" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="Address">

<EditItemTemplate>
<asp:TextBox ID="txtadd" runat="server" Text='<%#Eval("Address") %>' Width="80px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemadd" runat="server" Text='<%#Eval("Address") %>' Width="80px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftradd" runat="server" Width="80px" />
<asp:RequiredFieldValidator ID="rfvadd" runat="server" ControlToValidate="txtftradd" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="City">

<EditItemTemplate>
<asp:TextBox ID="txtcity" runat="server" Text='<%#Eval("City") %>' Width="90px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemcity" runat="server" Text='<%#Eval("City") %>' Width="90px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrcity" runat="server" Width="90px" />
<asp:RequiredFieldValidator ID="rfvcity" runat="server" ControlToValidate="txtftrcity" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="State">

<EditItemTemplate>
<asp:TextBox ID="txtstate" runat="server" Text='<%#Eval("State") %>' Width="90px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemstate" runat="server" Text='<%#Eval("State") %>' Width="90px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrstate" runat="server" Width="90px" />
<asp:RequiredFieldValidator ID="rfvstate" runat="server" ControlToValidate="txtftrstate" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="Country">

<EditItemTemplate>
<asp:TextBox ID="txtcountry" runat="server" Text='<%#Eval("Country") %>' Width="90px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemcountry" runat="server" Text='<%#Eval("Country") %>' Width="90px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrcountry" runat="server" Width="90px" />
<asp:RequiredFieldValidator ID="rfvcountry" runat="server" ControlToValidate="txtftrcountry" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="ZipCode">

<EditItemTemplate>
<asp:TextBox ID="txtzip" runat="server" Text='<%#Eval("ZipCode") %>' Width="50px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemzip" runat="server" Text='<%#Eval("ZipCode") %>' Width="50px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrzip" runat="server" Width="50px" />
<asp:RequiredFieldValidator ID="rfvzip" runat="server" ControlToValidate="txtftrzip" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="DOB">

<EditItemTemplate>
<asp:TextBox ID="txtdob" runat="server" Text='<%#Eval("DOB") %>' Width="70px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemdob" runat="server" Text='<%#Eval("DOB") %>' Width="70px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrdob" runat="server" Width="70px" />
<asp:RequiredFieldValidator ID="rfvdob" runat="server" ControlToValidate="txtftrdob" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="Gender">

<EditItemTemplate>
<asp:TextBox ID="txtgen" runat="server" Text='<%#Eval("Gender") %>' Width="50px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemgen" runat="server" Text='<%#Eval("Gender") %>' Width="50px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrgen" runat="server" Width="50px" />
<asp:RequiredFieldValidator ID="rfvgen" runat="server" ControlToValidate="txtftrgen" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="ContactNo">

<EditItemTemplate>
<asp:TextBox ID="txtno" runat="server" Text='<%#Eval("ContactNo") %>' Width="80px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemno" runat="server" Text='<%#Eval("ContactNo") %>' Width="80px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrno" runat="server" Width="80px" />
<asp:RequiredFieldValidator ID="rfvno" runat="server" ControlToValidate="txtftrno" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="Email">

<EditItemTemplate>
<asp:TextBox ID="txtemail" runat="server" Text='<%#Eval("Email") %>' Width="180px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitememail" runat="server" Text='<%#Eval("Email") %>' Width="180px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftremail" runat="server" Width="180px" />
<asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtftremail" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>

<asp:TemplateField HeaderText="BldGrp">

<EditItemTemplate>
<asp:TextBox ID="txtbld" runat="server" Text='<%#Eval("BloodGroup") %>' Width="40px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitembld" runat="server" Text='<%#Eval("BloodGroup") %>' Width="40px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrbld" runat="server" Width="40px" />
<asp:RequiredFieldValidator ID="rfvbld" runat="server" ControlToValidate="txtftrbld" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>
<asp:TemplateField HeaderText="RaceId">

<EditItemTemplate>
<asp:TextBox ID="txtrace" runat="server" Text='<%#Eval("RaceId") %>' Width="35px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemrace" runat="server" Text='<%#Eval("RaceId") %>' Width="35px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrrace" runat="server" Width="35px" />
<asp:RequiredFieldValidator ID="rfvrace" runat="server" ControlToValidate="txtftrrace" Text="*" ValidationGroup="validation"/>
</FooterTemplate> 

</asp:TemplateField>
<asp:TemplateField HeaderText="LangId">

<EditItemTemplate>
<asp:TextBox ID="txtlang" runat="server" Text='<%#Eval("LanguageId") %>' Width="35px" />
</EditItemTemplate>

<ItemTemplate>
<asp:Label ID="lblitemlang" runat="server" Text='<%#Eval("LanguageId") %>' Width="35px" />
</ItemTemplate>

<FooterTemplate>
<asp:TextBox ID="txtftrlang" runat="server" Width="35px" />
<asp:RequiredFieldValidator ID="rfvlang" runat="server" ControlToValidate="txtftrlang" Text="*" ValidationGroup="validation"/>
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

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .Gridview
        {
            margin-left: 0px;
            }
        .style16
        {
            width: 224px;
        }
        .style17
        {
            height: 23px;
            width: 225px;
        }
    </style>
</asp:Content>


