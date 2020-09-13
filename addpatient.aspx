<%@ Page Title="" Language="C#" MasterPageFile="~/physician.master" AutoEventWireup="true" CodeFile="addpatient.aspx.cs" Inherits="addpatient" %>

<script runat="server">

  
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 871px;
        }
        .style10
        {
            width: 25%;
        }
        .style11
        {
            width: 761px;
            height: 26px;
            margin-left: 80px;
        }
        .style12
        {
            width: 25%;
            height: 26px;
        }
        .style14
    {
        height: 38px;
        margin-left: 80px;
    }
    .style18
    {
        width:136px;
        height: 38px;
    }
        .style22
        {
            width: 4px;
        }
        .style25
    {
        width: 4px;
        height: 1cm;
        margin-left: 80px;
    }
    .style27
    {
        width: 136px;
        height: 26px;
        margin-left: 80px;
    }
    .style30
    {
        height: 76px;
        width: 303px;
    }
    .style31
    {
        width: 136px;
        height: 23px;
    }
    .style34
    {
        width: 135px;
        height: 1cm;
        margin-left: 80px;
    }
    .style35
    {
        width: 135px;
        height: 26px;
        margin-left: 80px;
    }
    .style36
    {
        width: 136px;
    }
    .style37
    {
        width: 136px;
        margin-left: 80px;
    }
    .style38
    {
        width: -28;
        height: 1cm;
        margin-left: 80px;
    }
    .style39
    {
        height: 38px;
        margin-left: 80px;
        width: 135px;
    }
    .style40
    {
        width: 136px;
        height: 38px;
        margin-left: 80px;
    }
    .style41
    {
        width: 135px;
        margin-left: 80px;
    }
        </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--<table class="style5" 
    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #800080">
    <tr>
    <td align="center" class="style6" bgcolor="#99FF99" height="1cm">
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#333399">DISPLAY PATIENT LIST</asp:LinkButton>
    </td>
    <td align="center" class="style6" bgcolor="#99FF99" height="1cm">
        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#333399">ADD PATIENT</asp:LinkButton>
    </td>
    <td align="center" class="style9" bgcolor="#99FF99" height="1cm">
        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#333399">CONFIGURE MEDICINES</asp:LinkButton>
    </td>
    <td align="center" class="style9" bgcolor="#99FF99" height="1cm">
        <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#333399">CONFIGURE MEDICINES</asp:LinkButton>
    </td>
    </tr>
    </table>-->
    <table class="style1" 
        
        
        style="border: thin none #000000; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFFF; margin-top: 0.5cm; padding-top: 2px; padding-bottom: 2px;" 
        align="center">
        
        <tr>
        
            <td bgcolor="White" class="style25" align="right" 
                
                style="border-style: none solid none none; border-width: thin; border-color: #000000;" 
                rowspan="14">
                &nbsp;</td>
        
            <td bgcolor="White" class="style34" height="1cm" align="center" 
                
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-top-style: solid;">
                <asp:Label ID="Label1" runat="server" ForeColor="#009933" Text="MRN"></asp:Label>
                <asp:Label ID="Label26" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            <td bgcolor="White" class="style35" height="1cm" align="center" 
                
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-top-style: solid; border-right-style: solid;">
                <asp:TextBox ID="TextBox1" runat="server" height="22px" width="128px"></asp:TextBox>
                </td>
            <td bgcolor="White" class="style36" height="1cm" align="center" 
                
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-top-style: solid;">
                <asp:Label ID="Label2" runat="server" ForeColor="#009933" Text="SSN"></asp:Label>
                <asp:Label ID="Label27" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            <td bgcolor="White" class="style37" height="1cm" align="center" 
                
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-top-style: solid;">
                <asp:TextBox ID="TextBox2" runat="server" height="22px" width="128px" 
                    TabIndex="1"></asp:TextBox>
                </td>
            <td bgcolor="White" rowspan="14" height="1cm" class="style22" 
                
                
                style="border-left: thin solid #000000; border-right-color: #000000; border-right-width: thin; border-top-color: #000000; border-top-width: thin; border-bottom-color: #000000; border-bottom-width: thin;">
                &nbsp;</td>
            <td bgcolor="White" rowspan="14" align="left" class="style30">
                <asp:Image ID="Image3" runat="server" ImageAlign="AbsMiddle" 
                    ImageUrl="~/add.jpg" Height="250px" Width="303px" />
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style38" height="1cm" align="center" colspan="4" 
                
                
                
                style="border-color: #000000; border-width: thin; border-collapse: collapse; border-top-style: solid; border-bottom-style: solid;">
                <asp:Label ID="Label16" runat="server" ForeColor="Black" 
                    Text="Basic Information"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style35" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label3" runat="server" ForeColor="#009933" Text="First Name"></asp:Label>
                <asp:Label ID="Label24" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td bgcolor="White" class="style35" height="1cm" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-right-style: solid;">
                <asp:TextBox ID="TextBox3" runat="server" height="22px" width="128px" 
                    TabIndex="2"></asp:TextBox>
            </td>
            <td bgcolor="White" class="style31" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label4" runat="server" ForeColor="#009933" Text="Last Name"></asp:Label>
            </td>
            <td bgcolor="White" class="style27" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:TextBox ID="TextBox4" runat="server" height="22px" width="128px" 
                    TabIndex="3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style39" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label6" runat="server" ForeColor="#009933" Text="DOB"></asp:Label>
                <asp:Label ID="Label25" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <br />
                <asp:Label ID="Label23" runat="server" Font-Size="Small" ForeColor="Gray" 
                    Text="DD/MM/YYYY"></asp:Label>
            </td>
            <td bgcolor="White" class="style39" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-right-style: solid;">
                <asp:TextBox ID="TextBox6" runat="server" height="22px" 
                    width="128px" AutoCompleteType="Disabled" 
                    ontextchanged="TextBox6_TextChanged" TabIndex="4" ></asp:TextBox>
                <br />
                </td>
            <td bgcolor="White" class="style18" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label7" runat="server" ForeColor="#009933" Text="Gender"></asp:Label>
            </td>
            <td bgcolor="White" class="style40" align="center" 
                style="border-collapse: collapse">
                <asp:DropDownList ID="DropDownList2" runat="server" height="22px" width="128px" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" TabIndex="5">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style34" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label8" runat="server" ForeColor="#009933" Text="Blood Group"></asp:Label>
            </td>
            <td bgcolor="White" class="style41" height="1cm" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-right-style: solid;">
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
            <td bgcolor="White" class="style36" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label9" runat="server" ForeColor="#009933" Text="Race"></asp:Label>
            </td>
            <td bgcolor="White" class="style37" height="1cm" align="center" 
                style="border-collapse: collapse">
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
            <td bgcolor="White" class="style34" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label10" runat="server" ForeColor="#009933" Text="Language"></asp:Label>
            </td>
            <td bgcolor="White" class="style41" height="1cm" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-right-style: solid;">
                <asp:DropDownList ID="DropDownList6" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Language" 
                    DataValueField="Language" height="22px" width="128px" TabIndex="8">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Language] FROM [LanguageList]"></asp:SqlDataSource>
            </td>
            <td bgcolor="White" class="style36" height="1cm" align="center" 
                style="border-collapse: collapse">
                &nbsp;</td>
            <td bgcolor="White" class="style37" height="1cm" align="center" 
                style="border-collapse: collapse">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style38" height="1cm" align="center" colspan="4" 
                
                
                
                style="border-color: #000000; border-top-style: solid; border-bottom-style: solid; border-width: thin; border-collapse: collapse;">
                <asp:Label ID="Label18" runat="server" ForeColor="Black" 
                    Text="Contact Information"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style34" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label5" runat="server" ForeColor="#009933" Text="Street Address"></asp:Label>
            </td>
            <td bgcolor="White" class="style41" height="1cm" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-right-style: solid;">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" height="22px" 
                    width="128px" TabIndex="9"></asp:TextBox>
            </td>
            <td bgcolor="White" class="style36" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label13" runat="server" ForeColor="#009933" Text="City"></asp:Label>
            </td>
            <td bgcolor="White" class="style37" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:DropDownList ID="DropDownList7" runat="server" height="22px" width="128px">
                    <asp:ListItem>Pune</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Washington DC</asp:ListItem>
                    <asp:ListItem>California</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style34" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label14" runat="server" ForeColor="#009933" Text="State"></asp:Label>
                </td>
            <td bgcolor="White" class="style41" height="1cm" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-right-style: solid;">
                <asp:DropDownList ID="DropDownList9" runat="server" height="22px" width="128px">
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                    <asp:ListItem>Calfornia</asp:ListItem>
                    <asp:ListItem>New York</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td bgcolor="White" class="style36" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label15" runat="server" ForeColor="#009933" Text="Country"></asp:Label>
                </td>
            <td bgcolor="White" class="style37" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:DropDownList ID="DropDownList8" runat="server" height="22px" width="128px">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style34" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label19" runat="server" ForeColor="#009933" Text="Zip Code"></asp:Label>
                </td>
            <td bgcolor="White" class="style41" height="1cm" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-right-style: solid;">
                <asp:TextBox ID="TextBox15" runat="server" height="22px" width="128px" 
                    Columns="13"></asp:TextBox>
                </td>
            <td bgcolor="White" class="style36" height="1cm" align="center" 
                style="border-collapse: collapse">
                &nbsp;</td>
            <td bgcolor="White" class="style37" height="1cm" align="center" 
                style="border-collapse: collapse">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style34" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label12" runat="server" ForeColor="#009933" Text="Contact No."></asp:Label>
                </td>
            <td bgcolor="White" class="style41" height="1cm" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-right-style: solid;">
                <asp:TextBox ID="TextBox10" runat="server" height="22px" 
                    width="128px" TabIndex="14"></asp:TextBox>
                </td>
            <td bgcolor="White" class="style36" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label17" runat="server" ForeColor="#009933" Text="Email"></asp:Label>
                </td>
            <td bgcolor="White" class="style37" height="1cm" align="center" 
                style="border-collapse: collapse">
                <asp:TextBox ID="TextBox14" runat="server" height="22px" width="128px" 
                    TabIndex="15"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style38" align="center" colspan="4" height="1cm"
                
                
                
                style="border-color: #000000; border-top-style: solid; border-bottom-style: solid; border-width: thin; border-collapse: collapse;">
                <asp:Label ID="Label20" runat="server" ForeColor="Black" 
                    Text="Account Information"></asp:Label>
                </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style39" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label21" runat="server" ForeColor="#009933" Text="Username"></asp:Label>
                </td>
            <td bgcolor="White" class="style39" align="center" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-right-style: solid;">
                <asp:TextBox ID="TextBox16" runat="server" height="22px" 
                    width="128px" TabIndex="16"></asp:TextBox>
                </td>
            <td bgcolor="White" class="style14" align="center" 
                style="border-collapse: collapse">
                <asp:Label ID="Label22" runat="server" ForeColor="#009933" Text="Password"></asp:Label>
                </td>
            <td bgcolor="White" class="style40" align="center" 
                style="border-collapse: collapse">
                <asp:TextBox ID="TextBox17" runat="server" height="22px" 
                    width="128px" TabIndex="17"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style34" align="center" height="1cm" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-bottom-style: ridge;">
                <br />
                </td>
            <td bgcolor="White" class="style41" align="center" height="1cm" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-bottom-style: solid; border-top-style: none; border-right-style: solid;">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#333399" 
                    Text="Save" Width="86px" OnClientClick="" onclick="Button1_Click" style="height: 29px" />
                </td>
            <td bgcolor="White" class="style37" align="center" height="1cm" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-bottom-style: ridge;">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#333399" 
                    PostBackUrl="physician1.aspx" Text="Cancel" Width="86px" 
                    onclick="Button1_Click" />
                </td>
         
            <td bgcolor="White" class="style37" align="center" height="1cm" 
                
                style="border-width: thin; border-color: #000000; border-collapse: collapse; border-bottom-style: ridge;">
                &nbsp;</td>
        </tr>
        
    </table>
</asp:Content>

