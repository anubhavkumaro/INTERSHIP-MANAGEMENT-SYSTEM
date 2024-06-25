<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin-left: 370px;
            margin-top: 120px;
            background-color:#acdcfc;
        }
        .login {
            width: 650px;
            height: 400px;
            background-image:url("Logbg.jpg");
            background-size:cover;
            border-radius:40px;
        }
        .auto-style1 {
            width: 100%;
            height: 380px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            width: 255px;
        }
        .auto-style4 {
            height: 30px;
            width: 657px;
        }
        .auto-style7 {
            width: 166px;
        }
        .auto-style8 {
            height: 30px;
            width: 156px;
        }
        .auto-style9 {
            width: 657px;
        }
        .auto-style11 {
            height: 30px;
            width: 807px;
        }
        .auto-style12 {
            width: 807px;
        }
        .auto-style13 {
            width: 418px;
        }
        .auto-style14 {
            height: 30px;
            width: 418px;
        }
        .auto-style15 {
            width: 418px;
            height: 69px;
        }
        .auto-style16 {
            width: 156px;
            height: 69px;
        }
        .auto-style17 {
            width: 657px;
            height: 69px;
        }
        .auto-style18 {
            height: 69px;
        }
        .button {
            display: inline-block;
            outline: none;
            cursor: pointer;
            font-size: 14px;
            line-height: 1;
            border-radius: 500px;
            transition-property: background-color,border-color,color,box-shadow,filter;
            transition-duration: .3s;
            border: 1px solid transparent;
            letter-spacing: 2px;
            min-width: 160px;
            text-transform: uppercase;
            white-space: normal;
            font-weight: 700;
            text-align: center;
            padding: 8px 40px;
            color:rgb(5, 5, 5);
            background-color:rgb(240, 250, 5);
            }
                    .button:hover{
                        transform: scale(1.04);
                        background-color: #21e065;
                    }
        .auto-style19 {
            width: 156px;
        }
        .auto-style20 {
            width: 418px;
            height: 40px;
        }
        .auto-style21 {
            width: 807px;
            height: 40px;
        }
        .auto-style22 {
            width: 156px;
            height: 40px;
        }
        .auto-style23 {
            width: 657px;
            height: 40px;
        }
        .auto-style24 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <th class="auto-style7" colspan="2">
                    &nbsp;</th>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <th class="auto-style7" colspan="2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Width="200px" Font-Names="Algerian" Font-Size="XX-Large" ForeColor="Red" Text="User Login"></asp:Label>
                </th>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <th class="auto-style12" rowspan="2">
                    <asp:Image ID="Image1" runat="server" Height="116px" ImageUrl="Image\\Logo.png" Width="124px" />
                </th>
                <td class="auto-style19">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Blue" Text="Username"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Blue" Text="Password"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox2" runat="server" Width="250px" Height="30px" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" CssClass="button" Height="40px" runat="server" OnClick="Button1_Click" Text="Login" />
                </td>
                <th class="auto-style4">
                    <asp:Label ID="Label4" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
                </th>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style23">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large">Foraget Password</asp:LinkButton>
                </td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
