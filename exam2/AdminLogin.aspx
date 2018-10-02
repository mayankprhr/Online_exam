<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="exam2.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       h1{
        text-align:center;
        }

       .image

        
        .auto-style1 {
            height: 48px;
        }

        .auto-style9 {
            margin-left: 0px;
            border-radius: 10px;
            background-color: ghostwhite
            color:#FFFFFF;
            text-align :center;
            font-family:arial, helvetica, sans-serif;
           
        }

        .auto-style14 {
            width: 560px;
            margin-left: 521px;
            height: 13px;
            margin-top: 0px;
            margin-bottom: 0px;
        }

        .auto-style17 {
            margin-left: 14px;
        }

        .imgdisp{
        display:block;
        margin-left:auto;
        margin-right:auto;
        border-radius:20px;       
        }

        .auto-style22 {
            width: 541px;
            margin-left: 521px;
        }
        .auto-style25 {
            width: 556px;
        }
        .auto-style27 {
            width: 978px;
            height: 66px;
        }
        .auto-style28 {
            width: 1661px;
            height: 64px;
        }
        .auto-style29 {
            width: 978px;
            height: 64px;
        }
        .auto-style31 {
            height: 704px;
        }
    </style>
</head>
<body style="background: linear-gradient(to bottom, #68EACC 0%, #497BE8 100%);background-size:100%">
    <form id="form1" runat="server" class="auto-style31"  >
        <div>

            <h1 style="background-color: #F0F0F0"><span class="auto-style1" style="font-family: Verdana, Geneva, Tahoma, sans-serif">Admin Login</span></h1>

        </div>
        
        <asp:Image ID="Image1" CssClass="imgdisp" runat="server" ImageUrl="~/Images/nathcorp.png"  Height="221px" Width="283px" />
        <br />

        <table style="background-color: #3B5998" class="auto-style14">
            <tr>
                <td class="auto-style28">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Ulabel" runat="server" Text="USERNAME" Font-Names="Arial" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="Utext" runat="server" Width="342px" Height="38px" Font-Names="Arial" Font-Size="Medium" CssClass="auto-style17" style="margin-left: 11px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Passlabel" runat="server" Text="PASSWORD" Font-Names="Arial" ForeColor="White" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="PassText" runat="server" Width="345px" Height="37px" TextMode="Password" Font-Names="Arial" Font-Size="Medium" CssClass="auto-style27" style="margin-left: 9px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style22">
            <tr>
                <td align="center" class="auto-style25">
                    <br />
                    <asp:Button ID="Login" runat="server" Height="41px" Text="Login" Width="164px" CssClass="auto-style9" Font-Size="XLarge" OnClick="Login_Click" />
                </td>
            </tr>
        </table>
      
    </form>
</body>
</html>
