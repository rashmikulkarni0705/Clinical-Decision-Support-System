<%@ Page Title="" Language="C#" MasterPageFile="~/physician2.master" AutoEventWireup="true" CodeFile="Diagnose.aspx.cs" Inherits="Diagnose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <table border="black" class="style1" align="center" 
        
        style="border: thin solid #000000; border-collapse: collapse; width: 906px;">
        <tr>
            <td align="center" style="border: thin solid #000000; width: 225px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" 
                    Text="Symptoms"></asp:Label>
            </td>
            <td align="center" 
                
                style="border: thin solid #000000; width: 225px; border-collapse: collapse;">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" 
                    Text="Physical Assessment"></asp:Label>
            </td>
            <td align="center" class="style3" 
                
                
                style="border: thin solid #000000; width: 226px; border-collapse: collapse;" 
                width="150">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" 
                    Text="Lab Test Recommendations"></asp:Label>
            </td>
            <td align="center" 
                
                style="border: thin solid #000000; border-collapse: collapse; width: 226px;">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" 
                    Text="Diagnosis"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; width: 225px" align="center" rowspan="3">
                <asp:ListBox ID="ListBox5" runat="server" Height="100px" Width="100px" 
                    onselectedindexchanged="ListBox5_SelectedIndexChanged"></asp:ListBox>
            </td>
            <td style="border: thin solid #000000; width: 225px; border-collapse: collapse;" 
                align="center" rowspan="3">
                <table class="style1" style="width: 88%; margin-bottom: 11px;">
                    <tr>
                        <td style="width: 180px" align="left">
                            <table class="style1" 
                                style="width: 101%; height: 226px; border-collapse: collapse;">
                                <tr>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Eyes"></asp:Label>
                                    </td>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                                        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Skin"></asp:Label>
                                    </td>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                                        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Throat"></asp:Label>
                                    </td>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                                        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Nails"></asp:Label>
                                    </td>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                                        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Tongue"></asp:Label>
                                    </td>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                                        <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Ear"></asp:Label>
                                    </td>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                                        <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Blood Pressure"></asp:Label>
                                    </td>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                                        <asp:Label ID="Label23" runat="server" Text="Normal"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Pulse rate"></asp:Label>
                                    </td>
                                    <td style="border: thin solid #000000; border-collapse: collapse;">
                                        <asp:Label ID="Label24" runat="server" Text="Normal"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style3" 
                style="border: thin solid #000000; width: 226px; border-collapse: collapse;" 
                align="center" width="150">
                <asp:ListBox ID="ListBox2" runat="server" Height="100px" Width="200px"></asp:ListBox>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 226px;" 
                rowspan="3">
                <table class="style1">
                    <tr>
                        <td align="center">
                            <asp:Label ID="Label25" runat="server" Text="Diagnosed Diseases"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:ListBox ID="ListBox3" runat="server" Height="100px" Width="150px" 
                                Font-Bold="True" ForeColor="#003300" 
                                onselectedindexchanged="ListBox3_SelectedIndexChanged"></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="Label26" runat="server" Text="Recommened Medicines"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:ListBox ID="ListBox4" runat="server" Height="100px" Width="150px" 
                                Font-Bold="True" ForeColor="#003300"></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Remove" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3" 
                style="border: thin solid #000000; width: 226px; border-collapse: collapse;" 
                align="center" width="150">
                <asp:Label ID="Label27" runat="server" Text="Alerts"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" 
                style="border: thin solid #000000; width: 226px; border-collapse: collapse;" 
                align="center" width="150">
                <div style="height :100px; overflow:auto;" align="left">
                
                <asp:ListBox ID="ListBox6" runat="server" ForeColor="Red" 
                    onselectedindexchanged="ListBox6_SelectedIndexChanged">
                </asp:ListBox>
                </div> 
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; width: 225px">
                &nbsp;</td>
            <td style="border: thin solid #000000; border-collapse: collapse;" 
                align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Generate and E-mail Prescription" OnClientClick="form1.target ='_blank';" />
                <br />
                <asp:Label ID="Label28" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 226px;">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

