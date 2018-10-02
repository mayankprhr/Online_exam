<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartExam.aspx.cs" Inherits="exam2.StartExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            height: 436px;
            margin-left: 237px;
            margin-top: 0px;
        }
        h1{
        text-align:center;
        }

        .auto-style1 {
            height: 48px;
        }

        .auto-style6 {
            margin-left: 357px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">

     <div>

            <h1 style="background-color: #F0F0F0"><span class="auto-style1" style="font-family: Verdana, Geneva, Tahoma, sans-serif; background-color: #F0F0F0;">NCAT Exam Instructions</span></h1>

        </div>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/nathcorp.png" Height="196px" Width="237px" style="float:left;" />
            <p class="auto-style5" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 100; font-style: normal; color: #000000; line-height: inherit; background-color: #99CCFF; background-repeat: repeat-x;">
        
    1. The exam will last for 3 hours.
    <br />
        <br />
        2. This is a multiple choice based question paper with only 1 correct option.<br />
&nbsp;<br />
        3. For every correct answer (submitted) 4 marks would be awarded and for a wrong answer 1 marks would be deducted from total. No marks would be deducted for skipped questions.<br />
        <br />
&nbsp;4. The question paper is comprised of 3 sections:&nbsp; Section A- Quantitative Assessment
        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Section B- Qualitative Assessment<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Section C- Technical Assessment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
&nbsp;5. Any form of illegal means during the course of exam will lead to immediate disqualification.<br />
        <br />
&nbsp;6. No electronic gadgets or stray papers are allowed in the examination hall.<br/>
        <br/>
        7. Answers would only be assessed for if it is submitted through SUBMIT button. The NEXT button is only for skipping the question.<br/><br/> 8. Answers once submitted or skipped cannot be tried again. 
         <br/>              
        <%--<h3 class="auto-style3" style="border-style: none; border-width: thin; border-color: #666666; font-family: Arial; font-size: x-large; font-weight: lighter; color: #003399; line-height: inherit; vertical-align: baseline"></h3>--%>
        <div>
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="startbtn" runat="server" Text="Start Exam" CssClass="auto-style6" Font-Bold="True" Font-Names="Trebuchet MS" Font-Overline="False" Font-Size="X-Large" ForeColor="Black" Height="75px" OnClick="Button1_Click" Width="440px" />
    </form>
</body>
</html>
