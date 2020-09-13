<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prescription.aspx.cs" Inherits="Prescription" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    function fixform() {
        if (opener.document.getElementById("form1").target != "_blank") return;
        opener.document.getElementById("form1").target = "";
        opener.document.getElementById("form1").action = opener.location.href;
    }
</script>
    <title>Prescription</title>
    <style type="text/css">
        .style1
        {
            width: 539px;
        }
        .style2
        {
            height: 23px;
            width: 267px;
        }
        .style3
        {
            height: 23px;
            width: 266px;
        }
        .style8
        {
            width: 266px;
        }
        .style9
        {
            width: 267px;
        }
        .style10
        {
            height: 31px;
        }
    </style>
</head>
<body onload="fixform()">
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/4.bmp" 
            Width="50%" BorderStyle="None" BorderWidth="1px" />
        <br />
        <table class="style1" align="center" style="border: thin solid #000000;">
            <tr>
                <td align="center" colspan="2" class="style10">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Garamond" 
                        Font-Size="Larger" ForeColor="Red" Text="Prescription"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td align="right" class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Date:"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Patient Name:" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style2">
                    </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="Diagnosis:" Font-Bold="True"></asp:Label>
&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" style="border: thin solid #000000" class="style8">
                    <asp:Label ID="Label6" runat="server" Text="Medication:" Font-Bold="True"></asp:Label>
                </td>
                <td align="center" style="border: thin solid #000000" class="style9">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                        Text="Recommended Lab Tests"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #000000" align="center" class="style8">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="MedicineNameLabel" runat="server" 
                                Text='<%# Eval("MedicineName") %>' />
                            <br />
<br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [MedicineName] FROM [RuntimeMedicine] ORDER BY [MedicineName]">
                    </asp:SqlDataSource>
                </td>
                <td style="border: thin solid #000000" align="center" class="style9">
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="TestNameLabel" runat="server" Text='<%# Eval("TestName") %>' />
                            <br />
<br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [TestName] FROM [RuntimeLabTest] ORDER BY [TestName]">
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
