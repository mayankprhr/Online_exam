<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NCATHome.aspx.cs" Inherits="exam2.NCATHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 570px;
            border-radius:20px;
        }
    </style>
    <style>
/*h1 {text-align:center;}*/
        p {font-size:30px;font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif}
        p {text-align:center;border:medium;}
        .auto-style2 {
            
            margin-left: 370px;
            border-radius: 10px;
        }
        .auto-style3 {
            margin-top: 1px;
            border-radius: 10px;
        }
        .auto-style5 {
            height: 949px;
        }
        .auto-style2:hover
        {
           color: white;
           background-color:Orange;
           border-color:black
        }
        .auto-style3:hover
        {
           color: white;
           background-color:Orange;
           border-color:black;
        }
        

    </style>

</head>
<body>
        <form id="form1" runat="server" style="background-image: url('Images/background.jpg');background-size:100%; background-repeat: repeat;" class="auto-style5">
        <br/>
        <br/>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/nathcorp.png" CssClass="auto-style1" Height="214px" Width="304px" />
        <p style="color: #FFFFFF">Welcome to NCAT Exam Portal </p>
        <hr />
        &nbsp;&nbsp;  
        
        <asp:Button ID="userbtn" runat="server" Text="Enter as Examinee" Width="230px" BackColor="Transparent" BorderStyle="Double" CssClass="auto-style2"  Height="60px" OnClick="userbtn_Click" Font-Bold="True" Font-Color="White" Font-Names="Arial" Font-Size="Large" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="adminbtn" runat="server" Text="Enter as Admin" BackColor="Transparent" BorderStyle="Double" CssClass="auto-style3" Height="60px" OnClick="adminbtn_Click" Width="239px" Font-Bold="True" Font-Names="Arial" Font-Size="Large" Font-Color="White" />
        
    </form>

</body>
</html>