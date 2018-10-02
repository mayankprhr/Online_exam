<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="exam2.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /*.body {
            position: relative;
            margin: 0;
            font-family: 'Work Sans', Arial, Helvetica, sans-serif;
            min-height: 100%;
            background: linear-gradient(to bottom, #68EACC 0%, #497BE8 100%);
            color: #777;
        }*/
        h1{
        text-align:center;
        }
      
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
            width: 554px;
            margin-left: 521px;
            height: 13px;
            margin-top: 0px;
            margin-bottom: 0px;
        }

        .auto-style17 {
            margin-left: 10px;
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
        .auto-style26 {
            width: 165px;
            height: 64px;
        }
        .auto-style27 {
            width: 379px;
            height: 64px;
        }
        .auto-style28 {
            height: 703px;
        }
    </style>
</head>
<body style="background: linear-gradient(to bottom, #68EACC 0%, #497BE8 100%);background-size:100%">
    <form id="form1" runat="server" class="auto-style28">
        <div>

            <h1 style="background-color: #F0F0F0"><span class="auto-style1" style="font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #F0F0F0;">User Login</span></h1>

        </div>

        <asp:Image ID="Image1" CssClass="imgdisp" runat="server" ImageUrl="~/Images/nathcorp.png" Height="221px" Width="258px" />
        <br />

        <table style="background-color: #3B5998" class="auto-style14">
            <tr>
                <td class="auto-style26">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Userlabel" runat="server" Text="USERNAME" Font-Names="Arial" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="Usertext" runat="server" Width="351px" Height="38px" Font-Names="Arial" Font-Size="Medium" CssClass="auto-style17"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">

                    &nbsp;&nbsp;&nbsp;

                    <asp:Label ID="UPasslabel" runat="server" Text="PASSWORD" Font-Names="Arial" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="UPassText" runat="server" Width="351px" Height="40px" TextMode="Password" Font-Names="Arial" Font-Size="Large" CssClass="auto-style17"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style22">
            <tr>
                <td align="center" class="auto-style25">
                    <br />
                    <asp:Button ID="Login" runat="server" Height="41px" Text="Login" Width="164px" CssClass="auto-style9" Font-Size="Large" OnClick="Login_Click" />
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
