<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="patient1.aspx.cs" Inherits="patient1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 102%;
            height: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <marquee scrollamount="5" direction="left" loop="infinite" behavior="alternate">
    <table cellpadding='1' cellspacing="1">
    <tr>
      <td>
      <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="XX-Large" ForeColor="Red" Font-Bold="True" Font-Names="Garamond" Font-Italic="True" Height="50"></asp:Label>
      </td>
    </tr>
    </table></marquee>

    <br />
    <br />
    <marquee scrollamount="3" direction="right" loop="infinite" behavior="alternate">
    <table cellpadding='1' cellspacing="1">
    <tr>
      <td>
      <img src='ji.png' alt=''height='200' width='130' />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </td>

      <td>
      <img src='kl.png' alt='' height='200' width='180'/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </td>

      <td>
      <img src='klo.png' alt='' height='200' width='180' />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </td>

       <td>
      <img src='ko.png' alt=''height='200' width='180' />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </td>

       <td>
      <img src='fgg.png' alt='' height='200' width='130' />
      </td>


    </tr>
    </table></marquee>

</asp:Content>

