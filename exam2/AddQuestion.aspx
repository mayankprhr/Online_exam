<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQuestion.aspx.cs" Inherits="exam2.AddQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>::Add Question::</title>

    <style type="text/css">
       html,body {
            position-: fixed;
            width:inherit;
            top: 0;
            bottom: 0;
            left: 0;
            center: 0;
        }

        h1 {
            text-align: center;
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            center: 0;
        }

        .auto-style4 {
            height: 492px;
            width: 99%;
        }

        .auto-style7 {
            width: 118px;
        }

        .auto-style8 {
            height: 58px;
            width: 118px;
        }

        p {
            text-shadow: 0 1px 0 #ccc, 0 2px 0 #c9c9c9, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0,0,0,.1), 0 0 5px rgba(0,0,0,.1), 0 1px 3px rgba(0,0,0,.3), 0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.25), 0 10px 10px rgba(0,0,0,.2), 0 20px 20px rgba(0,0,0,.15);
        }

        .auto-style21 {
            width: 100%;
            height: 64px;
            margin-top: 0px;
            
        }

        .auto-style23 {
            width: 20%;
            table-layout: fixed;
        }

        .auto-style28 {
            width: 100%;
        }

        .slctbtnstyle {
            border-top-left-radius: 15px;
            border-top-center-radius: 15px;
            background-color:#224d93;
            font-size-adjust: inherit;
            width:100%;
        }

        .btnstyle {
            border-radius: 15px;
            background-color: transparent;
            width:100%;
        }
        
        .auto-style29 {
            width: 540px;
        }
        .auto-style30 {
            height: 58px;
            width: 540px;
        }
        .auto-style33 {
            width: 540px;
            height: 50px;
        }
        .auto-style34 {
            width: 118px;
            height: 50px;
        }
        .auto-style35 {
            width: 540px;
            height: 51px;
        }
        .auto-style36 {
            width: 118px;
            height: 51px;
        }
        .auto-style37 {
            width: 540px;
            height: 62px;
        }
        .auto-style38 {
            width: 118px;
            height: 62px;
        }
        .auto-style41 {
            height: 69px;
        }
        
        .auto-style42 {
            width: 540px;
            height: 75px;
        }
        .auto-style43 {
            
        }
        .imgdisp{
            
        border-radius:20px;       
        }
        
        </style>
</head>

<body>
    <form id="form1" runat="server" class="auto-style28">
      <div>
       <asp:Image ID="Image1" CssClass="imgdisp" runat="server" ImageUrl="~/Images/nathcorp.png"  Height="174px" Width="283px" />
        <br />
      </div>
        <table class="auto-style21" style="background-color: #F0F0F0">
            <tr>
                <td class="auto-style23">
                    <asp:Button ID="addquestn" runat="server" CssClass="slctbtnstyle" Text="Add Questions" Font-Bold="False" Font-Names="helvetica,Arial" Font-Size="X-Large" Height="50px" ForeColor="White" />
                </td>
                <td class="auto-style23">
                    <asp:Button ID="viewquestn" runat="server" CssClass="btnstyle" Text="View Questions" Font-Bold="False" Font-Names="helvetica,Arial" Font-Size="X-Large" Height="50px" OnClick="viewquestn_Click" />
                </td>
                <td class="auto-style23">
                    <asp:Button ID="viewrslt" runat="server" CssClass="btnstyle" Text="View Result" Font-Bold="False" Font-Names="helvetica,Arial" Font-Size="X-Large" Height="50px" />
                </td>
                <td class="auto-style23">
                    <asp:Button ID="manageuser" runat="server" CssClass="btnstyle" Text="Manage Users" Font-Bold="False" Font-Names="helvetica,Arial" Font-Size="X-Large" Height="50px" OnClick="manageuser_Click" />
                </td>
                <td class="auto-style23">
                    <asp:Button ID="logout" runat="server" CssClass="btnstyle" Text="Logout" Font-Bold="False" Font-Names="helvetica,Arial" Font-Size="X-Large" Height="50px" OnClick="logout_Click"/>
                </td>
            </tr>
        </table>
        <br />
        
                         
                            <table class="auto-style4">
                                <tr class="TableEvenRow">
                                    <td align="center" class="auto-style29" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">Question:
                                    </td>
                                    <td class="auto-style7" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                       <asp:TextBox id="txtQsn" CssClass="Text" Width="970px" runat="server" 
                                           MaxLength="8000" TextMode="MultiLine" Height="110px" style="margin-left: 6px" OnTextChanged="txtQsnDesc_TextChanged" Font-Names="Helvetica" Font-Size="Medium"></asp:TextBox>
                                    </td>
                                </tr> 
                                <tr class="TableOddRow">
                                    <td align="center" class="auto-style30" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">Area:</td>
                                    <td align="left" class="auto-style8" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            <asp:DropDownList ID="areaddl" CssClass="Text" Width="281px" runat="server" 
                                                AutoPostBack="True" onselectedindexchanged="ddlOptions_SelectedIndexChanged" Height="47px">                                              
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem>General</asp:ListItem>
                                                <asp:ListItem>Programming</asp:ListItem>
                                                <asp:ListItem>Networking</asp:ListItem>
                                                <asp:ListItem>Database</asp:ListItem>
                                            </asp:DropDownList>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td align="center" class="auto-style30" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">Sub Area:</td>
                                    <td align="left" class="auto-style8" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            <asp:DropDownList ID="subareaddl" CssClass="Text" Width="286px" runat="server" 
                                                AutoPostBack="True" onselectedindexchanged="ddlOptions_SelectedIndexChanged" Height="118px">                                              
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <%--<asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>--%>
                                            </asp:DropDownList>
                                    </td>
                                </tr> 
                                <tr>
                                        <td align="center" class="auto-style33" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            Option 1</td>
                                        <td  align="left" class="auto-style34" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            <asp:TextBox ID="opt1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="347px" Font-Names="Helvetica" Font-Size="Medium"></asp:TextBox>
                                        </td>
                                    </tr>
                                <tr>
                                        <td align="center" class="auto-style35" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            Option 2</td>
                                        <td  align="left" class="auto-style36" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            <asp:TextBox ID="opt2" runat="server" OnTextChanged="opt2_TextChanged" Width="346px" Font-Names="Helvetica" Font-Size="Medium"></asp:TextBox>
                                        </td>
                                    </tr>
                                <tr>
                                        <td align="center" class="auto-style33" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            Option 3</td>
                                        <td  align="left" class="auto-style34" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            <asp:TextBox ID="opt3" runat="server" OnTextChanged="opt3_TextChanged" Width="351px" Font-Names="Helvetica" Font-Size="Medium"></asp:TextBox>
                                        </td>
                                    </tr>
                                <tr class="TableEvenRow">
                                        <td align="center" class="auto-style35" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            Option 4</td>
                                        <td  align="left" class="auto-style36" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            <asp:TextBox ID="opt4" runat="server" OnTextChanged="opt4_TextChanged" Width="350px" Font-Names="Helvetica" Font-Size="Medium"></asp:TextBox>
                                        </td>
                                    </tr>      
                                     <tr class="TableOddRow" id="trOptAns" runat="server">
                                        <td align="center" class="auto-style37" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">Choose the Correct Answer:
                                        </td>
                                        <td align="left" class="auto-style38" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">                                         
                                            <asp:RadioButton ID="rbtnOpt1" runat="server" CssClass="Label" Text="Option 1" GroupName="OptAns" OnCheckedChanged="rbtnOpt1_CheckedChanged" />  
                                            <asp:RadioButton ID="rbtnOpt2" runat="server" CssClass="Label" Text="Option 2" GroupName="OptAns" OnCheckedChanged="rbtnOpt2_CheckedChanged" />  
                                            <asp:RadioButton ID="rbtnOpt3" runat="server" CssClass="Label" Text="Option 3" GroupName="OptAns" OnCheckedChanged="rbtnOpt3_CheckedChanged" />  
                                            <asp:RadioButton ID="rbtnOpt4" runat="server" CssClass="Label" Text="Option 4" GroupName="OptAns" OnCheckedChanged="rbtnOpt4_CheckedChanged" />  
                                        </td>
                                    </tr>
                                    <tr class="TableEvenRow">
                                        <td align="center" class="auto-style42" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">Difficulty</td>
                                        <td align="left" class="auto-style43" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                            <asp:DropDownList ID="diffddl" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="184px" Width="308px">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>            
                                                <asp:ListItem>1(Easy)</asp:ListItem>
                                                <asp:ListItem>2(Medium)</asp:ListItem>
                                                <asp:ListItem>3(Hard)</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr> 
                                    <tr align="center">
                                        <td colspan="2" class="auto-style41">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnSubmit" Text="Submit" Width="144px" CssClass="ButtonNew" 
                                                runat="server" onclick="btnSubmit_Click" Font-Names="Yu Gothic UI Semibold" Font-Size="Medium" Height="51px" style="margin-left: 0px" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            <asp:Button ID="btnCancel" Text="Cancel" Width="129px" CssClass="ButtonNew" 
                                                runat="server" onclick="btnCancel_Click" Font-Names="Yu Gothic UI Semibold" Font-Size="Medium" Height="45px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp;</td>
                                    </tr>                                    
                                 </table>   
    </form>
</body>
</html>

</html>
