<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="exam2.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
          .auto-style19 {
            height: 48px;
        }
        .auto-style5 {
            width: 692px;
            margin-left: 358px;
            margin-top: auto;
            height: 427px;
        }
        .auto-style12 {
            height: 29px;
        }
        .auto-style19 {
            width: 1591px;
            height: 61px;
        }
           }
        .auto-style15 {
            height: 949px;
        }

          h1{
        text-align:center;
        }

           .auto-style17 {
            margin-left: 570px;
            border-radius:20px;
            margin-top: 0px;
        }
        .auto-style21 {
            width: 1591px;
            height: 35px;
        }
        .auto-style23 {
            width: 896px;
            height: 26px;
        }
        .auto-style25 {
            width: 896px;
            height: 35px;
        }
        .auto-style26 {
            width: 1591px;
            height: 7px;
        }
        .auto-style27 {
            width: 896px;
            height: 7px;
        }
        .auto-style28 {
            width: 1591px;
            height: 28px;
        }
        .auto-style29 {
            width: 896px;
            height: 28px;
        }
        .auto-style30 {
            width: 1591px;
            height: 29px;
        }
        .auto-style31 {
            width: 1591px;
            height: 26px;
        }
    </style>
</head>
<body style="background: linear-gradient(to bottom, #68EACC 0%, #497BE8 100%);background-size:100%">

    <form id="form1" runat="server" style="background-image: url('Images/b.jpg');background-size:100%; background-repeat: repeat;" class="auto-style15">

     <div>
            <h1 style="background-color: #F0F0F0"><span class="auto-style19" style="font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #F0F0F0;">Result</span></h1>
        </div>

     <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/nathcorp.png" CssClass="auto-style17" Height="214px" Width="330px" />

        <br />

    <table class="auto-style5" style="border-style: inset; font-family: Helvetica; font-size: medium; font-weight: normal; color: #000000; background-color: #FFFFFF; opacity:10%">
    <tr>
            <td align="center" class="auto-style30">Username: </td>
            <td class="auto-style12">
                <asp:Label ID="uname" runat="server" Text="uname"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style31">Your Score in Technical Questions: </td>
            <td class="auto-style23">
                <asp:Label ID="techscore" runat="server" Text="techscore"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style21">Your Score in Quantitative Questions:  </td>
            <td class="auto-style25">
                <asp:Label ID="quantscore" runat="server" Text="quantscore"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style26">Your Score in Qualitative Questions:  </td>
            <td class="auto-style27">
                <asp:Label ID="qualscore" runat="server" Text="qualscore"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style28">Your Final Score is:  </td>
            <td class="auto-style29">
                <asp:Label ID="totalscore" runat="server" Text="total"></asp:Label>
            </td>
        </tr>
    </table>



    </form>



</body>
</html>
