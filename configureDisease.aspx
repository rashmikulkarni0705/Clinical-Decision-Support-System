<%@ Page Title="" Language="C#" MasterPageFile="~/physicianrules.master" AutoEventWireup="true" CodeFile="configureDisease.aspx.cs" Inherits="configureDisease" %>

  

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 676px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#3333FF" Text="Add New Rule :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#3333FF" Text="Available Rules"></asp:Label>
                :</td>
        </tr>
        <tr>
            <td style="width: 676px">

    <table class="style1" bgcolor="White" style="border: thin solid #000000; border-collapse: collapse;" 
        frame="box">
    <tr>
        <td style="border-style: solid; border-width: thin; width: 456px" 
            align="center">
            <asp:Label ID="Label4" runat="server" Text="Step 1: Insert Disease Name" 
                ForeColor="#3333FF"></asp:Label>
            <br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                height="26px" width="125px"></asp:TextBox>
        </td>
        <td style="border-width: thin; border-style: solid; width: 405px" 
            align="center">
            <asp:Label ID="Label14" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="border-style: solid; border-width: thin; width: 456px" 
            align="center">
            <asp:Label ID="Label5" runat="server" Text="Step 2:Select Symptoms" 
                ForeColor="#3333FF"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="SymptomName" 
                DataValueField="SymptomName" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" height="26px" 
                width="125px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [SymptomName] FROM [SymptomList] ORDER BY [SymptomName]">
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add Symptom" 
                onclick="Button1_Click" />
            <br />
        </td>
        <td style="border-style: solid; border-width: thin; width: 405px" 
            align="center" rowspan="2">
            <asp:Label ID="Label7" runat="server" Text="Selected Symptoms" 
                ForeColor="#3333FF"></asp:Label>
            <br />
            <asp:ListBox ID="ListBox1" runat="server" Height="100px" Width="150px"></asp:ListBox>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Remove" onclick="Button2_Click" />
        </td>
    </tr>
    <tr>
        <td style="border-style: solid; border-width: thin; width: 456px" 
            align="center">
            <asp:Label ID="Label6" runat="server" Text="Step 3:Insert New Symptoms" 
                ForeColor="#3333FF"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                Text="Add new Symptom" height="26px" width="125px" />
        </td>
    </tr>
    <tr>
        <td style="border-style: solid; border-width: thin; width: 456px" 
            align="center">
            <asp:Label ID="Label10" runat="server" ForeColor="#3333FF" 
                Text="Step 4: Medicines"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="MedicineName" 
                DataValueField="MedicineName" height="26px" width="125px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                Text="Add Medicine" height="26px" width="125px" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [MedicineName] FROM [MedicineList] ORDER BY [MedicineName]">
            </asp:SqlDataSource>
        </td>
        <td style="border-style: solid; border-width: thin; width: 405px" 
            align="center">
            <asp:Label ID="Label11" runat="server" ForeColor="#3333FF" 
                Text="Selected Medicine"></asp:Label>
            <br />
            <asp:ListBox ID="ListBox2" runat="server" Height="100px" Width="150px"></asp:ListBox>
            <br />
            <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Remove" />
        </td>


    </tr>
    <tr>
        <td style="border-style: solid; border-width: thin; width: 456px; height: 142px;" 
            align="center">
            <asp:Label ID="Label15" runat="server" ForeColor="#3333FF" 
                Text="Step 5: Lab Tests"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList3" runat="server" 
                DataSourceID="SqlDataSource3" DataTextField="TestName" 
                DataValueField="TestName" height="26px" width="125px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [TestName] FROM [LabTestList] ORDER BY [TestName]">
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
                Text="Add Test" height="26px" width="125px" />
            <br />
        </td>
        <td style="border-style: solid; border-width: thin; width: 405px" 
            align="center" rowspan="2">
            <asp:Label ID="Label16" runat="server" ForeColor="#3333FF" Text="Selected Test"></asp:Label>
            <br />
            <asp:ListBox ID="ListBox3" runat="server" Height="100px" Width="150px">
            </asp:ListBox>
            <br />
            <asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Remove" />
        </td>


    </tr>
    <tr>
        <td style="border-style: solid; border-width: thin; width: 456px" 
            align="center">
            <asp:Label ID="Label17" runat="server" ForeColor="#3333FF" 
                Text="Step 6:Insert New Lab Test"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" height="26px" width="125px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                Text="Add New Test" height="26px" width="125px" />
        </td>


    </tr>
    </table>
            </td>
            <td style="border-style: solid; border-width: thin; width: 306px;">
                <br />
                  <asp:GridView ID="GridView1" runat="server" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" onrowcancelingedit="GridView1_RowCancelingEdit"  
                onrowdeleting="GridView1_RowDeleting" AllowPaging="True"
               OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
                DataKeyNames="DiseaseName,Symptom,MedicineName" CssClass="GridView">
             <HeaderStyle BackColor="#61A6F8" BorderColor="Black" ForeColor="White" />
       
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


</asp:TemplateField>

</Columns>
            </asp:GridView>
                <br />
            <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 676px">
            <asp:Button ID="Button3" runat="server" Text="Confirm Rule" 
                onclick="Button3_Click" Font-Bold="True" Font-Size="Medium" />
            &nbsp;<asp:Button ID="Button10" runat="server" Font-Bold="True" Font-Size="Medium" 
                    onclick="Button10_Click" Text="Update Rule" />
            </td>
        </tr>
    </table>
    </asp:Content>

