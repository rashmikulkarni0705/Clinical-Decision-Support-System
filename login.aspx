<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CDSS-Login</title>
    <style type="text/css">

        .style1
        {
            width: 94%;
        }
        .style2
        {
            width: 719px;
        }
        .style3
        {
            width: 755px;
        }
        .style7
        {
            height: 16px;
            width: 137px;
        }
        .style8
        {
            width: 124px;
            height: 16px;
        }
        .style9
        {
            width: 137px;
        }
        .style5
        {
            width: 124px;
        }
        #SlideShowImage1
        {
            height: 287px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div style="width: 100%">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="190px" ImageUrl="~/4.bmp" 
            Width="100%" />
        &nbsp;<br />
        <asp:Image ID="Image2" runat="server" Height="16px" ImageUrl="~/line.png" 
            Width="100%" />
        <br />
        <table class="style1">
            <tr>
                <td class="style2" align="right">


                 <asp:ScriptManager runat="server" ID="ScriptManager">
                 </asp:ScriptManager>

                <asp:Timer runat="server" Interval="500" ID="SlideShowTimer" OnTick="SlideShowTimer_Tick" />
                <asp:UpdatePanel runat="server" ID="SlideShow" UpdateMode="Always">
    <ContentTemplate>
        <%-- This is the main slideshow image control --%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img runat="server" id="SlideShowImage1" src="~/lkk.png"
            alt="First Image"  />
    </ContentTemplate>
    <Triggers>
        <%-- The update panel will postback when the timer 'tick' event fires --%>
        <asp:AsyncPostBackTrigger ControlID="SlideShowTimer" EventName="Tick" />
    </Triggers>
</asp:UpdatePanel>

                    &nbsp;</td>
                <td class="style3">
                    <table class="style1">
                        <tr>
                            <td class="style7" align="center">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Garamond" 
                                    Font-Size="Large" Text="Enter  Username" Width="139px" ForeColor="#009900"></asp:Label>
                            </td>
                            <td class="style8">
                                <asp:TextBox ID="TextBox1" runat="server" Width="155px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" align="center">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Garamond" 
                                    Font-Size="Large" Text="Enter Password" Width="138px" ForeColor="#009900"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox2" runat="server" Width="151px" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style5">
                                <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style5">
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Garamond" 
                                    Font-Size="Large" Height="35px" onclick="Button1_Click" Text="Login" 
                                    Width="91px" BackColor="#66FF66" ForeColor="#009900" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
