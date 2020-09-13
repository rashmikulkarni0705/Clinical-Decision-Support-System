<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="fillinformation.aspx.cs" Inherits="Default2" %>

<script runat="server">

  
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 599px;
            height:2cm;
        margin-left: 80px;
    }
        .style10
        {
            width: 761px;
        }
        .style12
        {
            width: 761px;
            height: 26px;
        }
        .style14
    {
        height: 38px;
        margin-left: 80px;
    }
        .style22
        {
            width: 8px;
        }
        .style25
        {
            width: 811px;
            height: 12px;
        }
        .style26
        {
            width: 5px;
            height: 23px;
            margin-left: 80px;
        }
        .style28
        {
            width: 222px;
        }
        .style29
        {
            width: 139px;
            height: 23px;
        }
        .style39
        {
            width: 25%;
            height: 26px;
            margin-left: 80px;
        }
        .style40
        {
            width: 25%;
            height: 38px;
            margin-left: 80px;
        }
        .style41
        {
            width: 25%;
            height: 38px;
        }
        .style43
        {
            width: 25%;
            height: 23px;
            margin-left: 80px;
        }
        .style44
        {
            width: 139px;
            margin-left: 80px;
        }
        .style45
        {
            width: 139px;
        }
        .style46
        {
            width: 292px;
            height: 23px;
            margin-left: 80px;
        }
        </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style25" 
        
        
        style="border: thin none #000000; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFFF; margin-top: 0.5cm; padding-top: 2px; padding-bottom: 2px; border-collapse: collapse; position: relative;" 
        align="center" cellpadding="2" cellspacing="2">
        
        <tr>
        
            <td bgcolor="White" class="style26" align="right" 
                
                style="border-style: none solid none none; border-width: thin; border-color: #000000;" 
                rowspan="13">
                &nbsp;</td>
        
            <td bgcolor="White" class="style40" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-top-style: solid;">
                <asp:Label ID="Label1" runat="server" ForeColor="#009933" Text="MRN"></asp:Label>
                </td>
            <td bgcolor="White" class="style40" align="center" 
                
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-top-style: solid; border-right-style: solid;">
                <asp:TextBox ID="TextBox1" runat="server" height="22px" width="128px"></asp:TextBox>
                </td>
            <td bgcolor="White" class="style41" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-top-style: solid;">
                <asp:Label ID="Label2" runat="server" ForeColor="#009933" Text="SSN"></asp:Label>
                <asp:Label ID="Label26" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            <td bgcolor="White" class="style40" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-top-style: solid;">
                <asp:TextBox ID="TextBox2" runat="server" height="22px" width="128px" 
                    TabIndex="1"></asp:TextBox>
                </td>
            <td bgcolor="White" rowspan="13" height="1cm" class="style22" 
                
                
                
                style="border-left: thin solid #000000; border-right-color: #000000; border-right-width: thin; border-top-color: #000000; border-top-width: thin; border-bottom-color: #000000; border-bottom-width: thin;">
                &nbsp;</td>
            <td bgcolor="White" rowspan="13" height="1cm" class="style28">
                <asp:Image ID="Image3" runat="server" ImageAlign="AbsMiddle" 
                    ImageUrl="~/a2.bmp" Height="198px" />
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style46" height="2cm" align="center" colspan="4" 
                
                
                
                style="border-color: #000000; border-width: thin; border-collapse: collapse; border-top-style: solid; border-bottom-style: solid;">
                <asp:Label ID="Label16" runat="server" ForeColor="Black" 
                    Text="Basic Information"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style39" height="1cm" align="center">
                <asp:Label ID="Label3" runat="server" ForeColor="#009933" Text="First Name"></asp:Label>
                <asp:Label ID="Label24" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td bgcolor="White" class="style39" height="1cm" align="center" 
                style="border-right-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                <asp:TextBox ID="TextBox3" runat="server" height="22px" width="128px" 
                    TabIndex="2"></asp:TextBox>
            </td>
            <td bgcolor="White" class="style29" height="1cm" align="center">
                <asp:Label ID="Label4" runat="server" ForeColor="#009933" Text="Last Name"></asp:Label>
                <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td bgcolor="White" class="style39" height="1cm" align="center">
                <asp:TextBox ID="TextBox4" runat="server" height="22px" width="128px" 
                    TabIndex="3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style40" align="center">
                <asp:Label ID="Label6" runat="server" ForeColor="#009933" Text="DOB"></asp:Label>
                <asp:Label ID="Label25" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
                <asp:Label ID="Label23" runat="server" Font-Size="Small" ForeColor="Gray" 
                    Text="DD/MM/YYYY"></asp:Label>
            </td>
            <td bgcolor="White" class="style40" align="center" 
                style="border-right-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                <asp:TextBox ID="TextBox6" runat="server" height="22px" 
                    width="128px" AutoCompleteType="Disabled" 
                    ontextchanged="TextBox6_TextChanged" TabIndex="4" ></asp:TextBox>
                <br />
                </td>
            <td bgcolor="White" class="style41" align="center">
                <asp:Label ID="Label7" runat="server" ForeColor="#009933" Text="Gender"></asp:Label>
            </td>
            <td bgcolor="White" class="style40" align="center">
                <asp:DropDownList ID="DropDownList2" runat="server" height="22px" width="128px" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" TabIndex="5">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style43" height="1cm" align="center">
                <asp:Label ID="Label8" runat="server" ForeColor="#009933" Text="Blood Group"></asp:Label>
            </td>
            <td bgcolor="White" class="style44" height="1cm" align="center" 
                style="border-right-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" height="22px" 
                    width="128px" TabIndex="6">
                    <asp:ListItem>O+ve</asp:ListItem>
                    <asp:ListItem>O-ve</asp:ListItem>
                    <asp:ListItem>A+ve</asp:ListItem>
                    <asp:ListItem>A-ve</asp:ListItem>
                    <asp:ListItem>B+ve</asp:ListItem>
                    <asp:ListItem>B-ve</asp:ListItem>
                    <asp:ListItem>AB+ve</asp:ListItem>
                    <asp:ListItem>AB-ve></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td bgcolor="White" class="style45" height="1cm" align="center">
                <asp:Label ID="Label9" runat="server" ForeColor="#009933" Text="Race"></asp:Label>
            </td>
            <td bgcolor="White" class="style44" height="1cm" align="center">
                <asp:DropDownList ID="DropDownList3" runat="server" height="22px" width="128px" 
                    DataSourceID="SqlDataSource2" DataTextField="Race" DataValueField="Race" 
                    TabIndex="7">
                    <asp:ListItem>SELECT</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Race] FROM [RaceList]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style43" height="1cm" align="center">
                <asp:Label ID="Label10" runat="server" ForeColor="#009933" Text="Language"></asp:Label>
            </td>
            <td bgcolor="White" class="style44" height="1cm" align="center" 
                style="border-right-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                <asp:DropDownList ID="DropDownList6" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Language" 
                    DataValueField="Language" height="22px" width="128px" TabIndex="8">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Language] FROM [LanguageList]"></asp:SqlDataSource>
            </td>
            <td bgcolor="White" class="style45" height="1cm" align="center">
                &nbsp;</td>
            <td bgcolor="White" class="style44" height="1cm" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style46" height="2cm" align="center" colspan="4" 
                
                
                style="border-color: #000000; border-top-style: solid; border-bottom-style: solid; border-width: thin">
                <asp:Label ID="Label18" runat="server" ForeColor="Black" 
                    Text="Contact Information"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style43" height="1cm" align="center">
                <asp:Label ID="Label5" runat="server" ForeColor="#009933" Text="Street Address"></asp:Label>
            </td>
            <td bgcolor="White" class="style44" height="1cm" align="center" 
                style="border-right-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" height="22px" 
                    width="128px" TabIndex="9"></asp:TextBox>
            </td>
            <td bgcolor="White" class="style45" height="1cm" align="center">
                <asp:Label ID="Label13" runat="server" ForeColor="#009933" Text="City"></asp:Label>
            </td>
            <td bgcolor="White" class="style44" height="1cm" align="center">
                <asp:DropDownList ID="DropDownList7" runat="server" height="22px" width="128px">
                    <asp:ListItem>Pune</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>California</asp:ListItem>
                    <asp:ListItem>Washington DC</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style43" height="1cm" align="center">
                <asp:Label ID="Label14" runat="server" ForeColor="#009933" Text="State"></asp:Label>
                </td>
            <td bgcolor="White" class="style44" height="1cm" align="center" 
                style="border-right-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                <asp:DropDownList ID="DropDownList8" runat="server" height="22px" width="128px">
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>California</asp:ListItem>
                    <asp:ListItem>New York</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td bgcolor="White" class="style45" height="1cm" align="center">
                <asp:Label ID="Label15" runat="server" ForeColor="#009933" Text="Country"></asp:Label>
                </td>
            <td bgcolor="White" class="style44" height="1cm" align="center">
                <asp:DropDownList ID="DropDownList9" runat="server" height="22px" width="128px">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style43" height="1cm" align="center">
                <asp:Label ID="Label19" runat="server" ForeColor="#009933" Text="Zip Code"></asp:Label>
                </td>
            <td bgcolor="White" class="style44" height="1cm" align="center" 
                style="border-right-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                <asp:TextBox ID="TextBox15" runat="server" height="22px" width="128px" 
                    Columns="13"></asp:TextBox>
                </td>
            <td bgcolor="White" class="style45" height="1cm" align="center">
                &nbsp;</td>
            <td bgcolor="White" class="style44" height="1cm" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style43" height="1cm" align="center">
                <asp:Label ID="Label12" runat="server" ForeColor="#009933" Text="Contact No."></asp:Label>
                </td>
            <td bgcolor="White" class="style44" height="1cm" align="center" 
                style="border-right-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                <asp:TextBox ID="TextBox10" runat="server" height="22px" 
                    width="128px" TabIndex="14"></asp:TextBox>
                </td>
            <td bgcolor="White" class="style45" height="1cm" align="center">
                <asp:Label ID="Label17" runat="server" ForeColor="#009933" Text="Email"></asp:Label>
                </td>
            <td bgcolor="White" class="style44" height="1cm" align="center">
                <asp:TextBox ID="TextBox14" runat="server" height="22px" width="128px" 
                    TabIndex="15"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style40" align="center">
                &nbsp;</td>
            <td bgcolor="White" class="style40" align="center" 
                style="border-right-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                &nbsp;</td>
            <td bgcolor="White" class="style14" align="center">
                &nbsp;</td>
            <td bgcolor="White" class="style40" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style43" align="center" height="1cm" 
                style="border-bottom-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                <br />
                </td>
            <td bgcolor="White" class="style44" align="center" height="1cm" 
                
                style="border-bottom-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse; border-right-style: solid;">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#333399" 
                    Text="Save" Width="86px" OnClientClick="" onclick="Button1_Click" style="height: 29px" />
                </td>
            <td bgcolor="White" class="style44" align="center" height="1cm" 
                style="border-bottom-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#333399" 
                    PostBackUrl="physician1.aspx" Text="Cancel" Width="86px" 
                    onclick="Button1_Click" />
                </td>
         
            <td bgcolor="White" class="style44" align="center" height="1cm" 
                style="border-bottom-style: solid; border-width: thin; border-color: #000000; border-collapse: collapse;">
                &nbsp;</td>
        </tr>
        
    </table>
</asp:Content>

