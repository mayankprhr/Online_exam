<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tech.aspx.cs" Inherits="exam2.Tech" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 476px;
            height: 88px;
            border-radius: 10px;
        }

        .auto-style33 {
            border-radius: 10px;
        }


        .auto-style15 {
            height: 67px;
        }

        .auto-style61 {
            width: 56px;
            height: 37px;
        }

        .auto-style62 {
            width: 1126px;
            height: 37px;
        }

        .auto-style71 {
            width: 413px;
            height: 28px;
        }

        .auto-style74 {
            height: 28px;
            width: 201px;
        }

        .auto-style75 {
            width: 56px;
        }

        .auto-style76 {
            width: 56px;
            height: 49px;
        }

        .auto-style77 {
            width: 1126px;
            height: 49px;
        }

        .auto-style78 {
            width: 56px;
            height: 48px;
        }

        .auto-style79 {
            width: 1126px;
            height: 48px;
        }

        .auto-style80 {
            width: 56px;
            height: 47px;
        }

        .auto-style81 {
            width: 1126px;
            height: 47px;
        }

        .auto-style82 {
            width: 1126px;
        }

        .auto-style83 {
            width: 1466px;
        }

        .auto-style84 {
            width: 138px;
            height: 28px;
        }

        .auto-style85 {
            height: 28px;
            width: 296px;
        }

        .auto-style86 {
            margin-left: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style83" >
            <tr>
                <td style="font-family: Verdana, Geneva, Tahoma, sans-serif" class="auto-style84">Username:</td>
                <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #CCCCCC;" class="auto-style74">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="uname"></asp:Label>
                </td>


                <td style="font-family: Verdana, Geneva, Tahoma, sans-serif" class="auto-style85">Time Left</td>
                <td class="auto-style71">
                <asp:ScriptManager ID= "SM1" runat="server"></asp:ScriptManager>
                    <asp:Timer ID="timer1" runat="server" Interval="1000" OnTick="timer1_tick"></asp:Timer>

                <asp:UpdatePanel id="updPnl" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Label ID="lblTimer" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="#CC0000">TimeLeft</asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="timer1" EventName ="tick" />
                    </Triggers>
                    </asp:UpdatePanel>
                </td>
                <td>

                    <asp:Button ID="finishbtn" runat="server" Text="Finish Test and View Result" Width="360px" CssClass="auto-style86" Font-Bold="False" Font-Names="Helvetica" Font-Size="Large" OnClick="finishbtn_Click" />

                </td>
            </tr>
            
        </table>
        <h2 style="font-family: 'Bahnschrift SemiBold'; font-size: xx-large; font-weight: 200; font-style: inherit; font-variant: inherit; text-transform: inherit; line-height: inherit; vertical-align: bottom; background-color: #F0F0F0;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Technical&nbsp;&nbsp; Test</h2>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/nathcorp.png" Height="196px" Width="237px" Style="float: left;" />


        <br />

        <table>
            <tr class="TableEvenRow">
                <td style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter"Question number:
                </td class="auto-style75">
                    Question Number:
                <td class="auto-style82">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="qstn_no" Font-Names="Adobe Fan Heiti Std B" Font-Size="X-Large"></asp:Label>
                </td>

            </tr>
            <tr class="TableOddRow">
                <td class="auto-style61" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">Question:</td>
                <td class="auto-style62" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter; background-color: #CCCCFF;">

                    <asp:Label ID="Label1" runat="server" Text="qstn"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style76" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">&nbsp;&nbsp;&nbsp;&nbsp; A </td>
                <td class="auto-style77" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter; background-color: #F0F0F0;">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="options" ViewStateMode="Enabled" />
                </td>


            </tr>
            <tr>
                <td class="auto-style78" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">&nbsp; &nbsp;&nbsp;&nbsp;B</td>
                <td class="auto-style79" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter; background-color: #F0F0F0;">
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="options" ViewStateMode="Enabled" />
                </td>
            </tr>
            <tr>
                <td class="auto-style80" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">&nbsp;&nbsp;&nbsp;&nbsp; C&nbsp;</td>
                <td class="auto-style81" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter; background-color: #F0F0F0;">
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="options" ViewStateMode="Enabled" />
                </td>
            </tr>
            <tr>
                <td class="auto-style76" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">&nbsp;&nbsp;&nbsp;&nbsp; D</td>
                <td class="auto-style77" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter; background-color: #F0F0F0;">
                    <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" GroupName="options" ViewStateMode="Enabled" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Submit" runat="server" BackColor="#339933" CssClass="auto-style33" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Height="53px" OnClick="Submit_Click" Text="Submit" Width="167px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Next" runat="server" OnClick="Next_Click" Text="Next" Height="53px" Width="135px" CssClass="auto-style3" Font-Names="Franklin Gothic Medium" Font-Size="Large" />

                </td>
            </tr>
        </table>

    </form>
</body>
</html>
