<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="exam2.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                         
                            <table class="auto-style4">
                            <tr>
                            <td>Question id</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                                <tr class="TableEvenRow">
                                    <td align="center" class="auto-style29" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">Question:
                                    </td>
                                    <td class="auto-style7" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; font-weight: lighter">
                                       <asp:TextBox id="txtQsn" CssClass="Text" Width="970px" runat="server" 
                                           MaxLength="8000" TextMode="MultiLine" Height="110px" style="margin-left: 6px" OnTextChanged="txtQsnDesc_TextChanged" Font-Names="Helvetica" Font-Size="Medium"></asp:TextBox>
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

</asp:Content>
