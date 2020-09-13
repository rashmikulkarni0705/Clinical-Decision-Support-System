<%@ Page Title="" Language="C#" MasterPageFile="~/physician2.master" AutoEventWireup="true" CodeFile="createvisit.aspx.cs" Inherits="createvisit" %>


<%-- Add content controls here --%>
<asp:Content ID="Content3" ContentPlaceHolderID ="ContentPlaceHolder3" runat="server">
    <table id="Table11" runat="server" align="left" 
        style="margin: 0.5px; width: 100%; border: thin solid #000000; line-height: normal; text-align: left; border-collapse: collapse; overflow: auto;" 
        frame="box">
        <tr>
            <td style="border-style: solid none solid solid; border-width: thin; border-color: #000000; width: 223px;">
                <asp:Label ID="Label20" runat="server" Text="Date:" Font-Bold="True" 
                    ForeColor="#3366FF"></asp:Label>
                <asp:Label ID="Label17" runat="server" Text="LogDate"></asp:Label>
            </td>
            <td style="border-style: solid solid solid none; border-width: thin; border-color: #000000; width: 224px;">
                &nbsp;</td>
            <td colspan="2" style="border: thin solid #000000">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Time:" ForeColor="#3366FF"></asp:Label>
                <asp:Label ID="Label18" runat="server" Text="LogTime"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; " colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; width: 223px;" align="center">
                <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Symptoms" ForeColor="#3366FF"></asp:Label>
            </td>
            <td style="border: thin solid #000000; width: 224px;">
                &nbsp;</td>
            <td colspan="2" style="border: thin solid #000000" align="center">
                <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" ForeColor="#3366FF" Text="Physical assessment"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; width: 223px;" rowspan="9">
                <div style="height :250px; overflow:auto;" align="center">
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="SymptomName" 
                                DataValueField="SymptomName" Height="16px" 
                                onselectedindexchanged="CheckBoxList3_SelectedIndexChanged" 
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" >
                    </asp:CheckBoxList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [SymptomName] FROM [SymptomList] ORDER BY [SymptomName]">
                </asp:SqlDataSource>
            </td>
            <td style="border: thin solid #000000; width: 224px;" rowspan="9" 
                align="center">
                <asp:ListBox ID="ListBox1" runat="server" Height="250px" Width="220px" 
                                onselectedindexchanged="ListBox1_SelectedIndexChanged">
                </asp:ListBox>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;" 
                align="center">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Eyes"></asp:Label>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;">
                <asp:DropDownList ID="DropDownList7" runat="server" height="22px" width="157px">
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>Redness of eyes</asp:ListItem>
                    <asp:ListItem>Poor vision</asp:ListItem>
                    <asp:ListItem>Strain on eyes</asp:ListItem>
                    <asp:ListItem>Irritation of eyes</asp:ListItem>
                    <asp:ListItem>Tearing</asp:ListItem>
                    <asp:ListItem>Yellow eyes</asp:ListItem>
                    <asp:ListItem>Pale eyes</asp:ListItem>
                    <asp:ListItem>Dry eyes</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;" 
                align="center">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Skin"></asp:Label>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;">
                <asp:DropDownList ID="DropDownList3" runat="server" height="22px" width="157px">
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>Eczema</asp:ListItem>
                    <asp:ListItem>Psoriasis</asp:ListItem>
                    <asp:ListItem>Rosacea</asp:ListItem>
                    <asp:ListItem>Rash</asp:ListItem>
                    <asp:ListItem>Dryness of skin</asp:ListItem>
                    <asp:ListItem>Wrinkled skin</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;" 
                align="center">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Throat"></asp:Label>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;">
                <asp:DropDownList ID="DropDownList5" runat="server" height="22px" width="157px">
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>Sore throat</asp:ListItem>
                    <asp:ListItem>Redness of throat</asp:ListItem>
                    <asp:ListItem>Dry throat</asp:ListItem>
                    <asp:ListItem>Swollen throat</asp:ListItem>
                    <asp:ListItem>Watering throat</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;" 
                align="center">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Nails"></asp:Label>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;">
                <asp:DropDownList ID="DropDownList2" runat="server" height="22px" width="157px">
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>Grooved Lines on nails</asp:ListItem>
                    <asp:ListItem>Pitted nails</asp:ListItem>
                    <asp:ListItem>Exfoliated nails</asp:ListItem>
                    <asp:ListItem>Crumbled nails</asp:ListItem>
                    <asp:ListItem>Yellowish red nails</asp:ListItem>
                    <asp:ListItem Value="White Spotted nails">White Spotted nails</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;" 
                align="center">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Tongue"></asp:Label>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;">
                <asp:DropDownList ID="DropDownList4" runat="server" height="22px" width="157px">
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>Swollen tongue</asp:ListItem>
                    <asp:ListItem>Red tongue</asp:ListItem>
                    <asp:ListItem>Sore tongue</asp:ListItem>
                    <asp:ListItem>White Layer on tongue</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;" 
                align="center">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Ear"></asp:Label>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;">
                <asp:DropDownList ID="DropDownList6" runat="server" height="22px" width="157px">
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>Deafness</asp:ListItem>
                    <asp:ListItem>Ear pain</asp:ListItem>
                    <asp:ListItem>Itching Ear</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;" 
                align="center">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Blood Pressure"></asp:Label>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; margin-left: 40px; width: 224px;">
                <asp:TextBox ID="TextBox2" runat="server" height="22px" width="65px"></asp:TextBox>
            &nbsp;<asp:Label ID="Label30" runat="server" Text="-"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" height="22px" width="65px"></asp:TextBox>
                <br />
                <asp:Label ID="Label28" runat="server" Text="Systolic"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label31" runat="server" Text="-"></asp:Label>
&nbsp;<asp:Label ID="Label29" runat="server" Text="Diastolic"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;" 
                align="center">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Garamond" 
                    Font-Size="Large" Text="Pulse rate"></asp:Label>
            </td>
            <td style="border: thin solid #000000; border-collapse: collapse; width: 224px;">
                <asp:TextBox ID="TextBox3" runat="server" height="22px" width="157px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-left: thin solid #000000; border-right: thin none #000000; border-top: thin none #000000; border-bottom: thin solid #000000; " 
                colspan="2" rowspan="2">
            &nbsp;
                </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; width: 223px;" align="center">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                Text="Confirm" />
            </td>
            <td style="border: thin solid #000000; width: 224px;" align="center">
                <asp:Button ID="Button4" runat="server" Text="Remove" 
                    onclick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td style="border: thin solid #000000; " align="center" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="border-style: solid none solid solid; border-width: thin; border-color: #000000; width: 223px;" 
                align="center">
                &nbsp;</td>
            <td style="border-style: solid none solid none; border-width: thin; border-color: #000000; width: 224px;" 
                align="center">
                <asp:Button ID="Button1" runat="server" Text="Confirm" Font-Bold="True" 
                    Font-Names="Garamond" Font-Size="Large" Width="88px" 
                    onclick="Button1_Click" />
            </td>
            <td colspan="2" 
                style="border-style: solid solid solid none; border-width: thin; border-color: #000000;" 
                align="left">
                <asp:Button ID="Button2" runat="server" Text="Reset" Font-Bold="True" 
                    Font-Names="Garamond" Font-Size="Large" Width="83px" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        </table>
  
</asp:Content>