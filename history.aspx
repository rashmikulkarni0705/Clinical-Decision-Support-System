<%@ Page Title="" Language="C#" MasterPageFile="~/physician2.master" AutoEventWireup="true" CodeFile="history.aspx.cs" Inherits="history" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="border: thin solid #000000; width: 100%; border-collapse: collapse;">
        <tr>
            <td align="center" style="border: thin solid #000000; width: 453px;">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#0066FF" Text="Disease History"></asp:Label>
            </td>
            <td align="center" style="border: thin solid #000000; width: 338px;">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#3366FF" Text="Allergies"></asp:Label>
            </td>
            <td align="center" style="border: thin solid #000000">
                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Underline="True" 
                    ForeColor="#3366FF" Text="Current Medicine"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" style="border: thin solid #000000; width: 453px;">
                            <asp:ListBox ID="ListBox3" runat="server" DataSourceID="SqlDataSource1" 
                                DataTextField="DiseaseName" DataValueField="DiseaseName" 
                    Height="100px" Width="150px"></asp:ListBox>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [DiseaseName] FROM [DiseaseHistory] WHERE ([PatientId] = @PatientId)">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="1" Name="PatientId" 
                                        SessionField="PatientId" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
            <td align="center" style="border: thin solid #000000; width: 338px;">
                            <asp:ListBox ID="ListBox4" runat="server" DataSourceID="SqlDataSource2" 
                                DataTextField="MedicineName" DataValueField="MedicineName" 
                    Height="100px" Width="150px"></asp:ListBox>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [MedicineName] FROM [AllergyMap] WHERE ([PatientId] = @PatientId)">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="1" Name="PatientId" 
                                        SessionField="PatientId" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
            <td align="center" style="border: thin solid #000000">
                            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource3" 
                                DataTextField="MedicineName" DataValueField="MedicineName" 
                    Height="100px" Width="150px"></asp:ListBox>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [MedicineName] FROM [CurrentMedicine] WHERE ([PatientId] = @PatientId)">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="1" Name="PatientId" 
                                        SessionField="PatientId" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
        </tr>
        <tr>
            <td style="border-left: thin solid #000000; border-right: thin solid #000000; border-top: thin none #000000; border-bottom: thin none #000000; width: 453px;">
                <asp:Label ID="Label20" runat="server" ForeColor="#3366FF" 
                    Text="Add Disease History"></asp:Label>
            </td>
            <td style="border-left: thin solid #000000; border-right: thin solid #000000; border-top: thin none #000000; border-bottom: thin none #000000; width: 338px;">
                <asp:Label ID="Label21" runat="server" ForeColor="#3366FF" Text="Add Allergies"></asp:Label>
            </td>
            <td style="border-style: none solid none solid; border-width: thin; border-color: #000000;">
                            <asp:Label ID="Label9" runat="server" ForeColor="#3366FF" 
                                Text="Current Medication"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td style="border-left: thin solid #000000; border-right: thin solid #000000; border-top: thin none #000000; border-bottom: thin none #000000; width: 453px;">
                <br />
                            <asp:Label ID="Label8" runat="server" Text="Disease Name"></asp:Label>
&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource4" DataTextField="DiseaseName" 
                    DataValueField="DiseaseName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [DiseaseName] FROM [DiseaseList] ORDER BY [DiseaseName]">
                </asp:SqlDataSource>
            </td>
            <td style="border-left: thin solid #000000; border-right: thin solid #000000; border-top: thin none #000000; border-bottom: thin none #000000; width: 338px;">
                                        <asp:Label ID="Label13" runat="server" Text="Medicine"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:DropDownList ID="DropDownList2" runat="server" 
                                            DataSourceID="SqlDataSource5" DataTextField="MedicineName" 
                                            DataValueField="MedicineName">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [MedicineName] FROM [MedicineList] ORDER BY [MedicineName]">
                                        </asp:SqlDataSource>
                                    </td>
            <td style="border-style: none solid none solid; border-width: thin; border-color: #000000;">
                            <asp:Label ID="Label16" runat="server" ForeColor="Red" 
                                Text="This will delete all previous current medicine and add new data"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td align="center" 
                style="border-left: thin solid #000000; border-right: thin solid #000000; border-top: thin none #000000; border-bottom: thin none #000000; width: 453px;">
                &nbsp;</td>
            <td style="border-left: thin solid #000000; border-right: thin solid #000000; border-top: thin none #000000; border-bottom: thin none #000000; width: 338px;">
                                        <asp:Label ID="Label15" runat="server" Text="Allergy Comment"></asp:Label>
                                    &nbsp;
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
            <td style="border-style: none solid none solid; border-width: thin; border-color: #000000;">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 224px">
                                        <asp:DropDownList ID="DropDownList3" runat="server" 
                                            DataSourceID="SqlDataSource6" DataTextField="MedicineName" 
                                            DataValueField="MedicineName">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [MedicineName] FROM [MedicineList] ORDER BY [MedicineName]">
                                        </asp:SqlDataSource>
                                        &nbsp;&nbsp;
                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Add" />
                                    </td>
                        <td>
                                        <asp:ListBox ID="ListBox2" runat="server" Height="50px" 
                                Width="100px"></asp:ListBox>
                                    </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" 
                style="border: thin solid #000000;">
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Update" />
                        </td>
            <td align="center" 
                style="border: thin solid #000000;">
                                        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Update" />
                                    </td>
            <td align="center" 
                style="border: thin solid #000000;">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
                        </td>
        </tr>
    </table>
    </asp:Content>

