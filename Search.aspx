<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Intership</title>
    <style>
        body {
            background-color:#dafaca;
        }
        .page {
            
            width:450px;
            height:600px;
            margin:auto;
        }
        .had {
            background-image:url("Image\\oxford.jpg");
            width:450px;
            height:100px;
            background-size:cover;
        }
        span {
            color:red;
        }
        .input-text {
            width:425px;
            height:80px;
            background-color:white;
            margin-top:2%;
            border-radius:3%;
            padding:3%;
        }
        .TextBox {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        border-bottom: 2px solid red;
    }
        .button20 {
  cursor: pointer;
  position: relative;
  border-radius: 1.87rem;
  line-height: 1.25rem;
  font-size: 1rem;
  font-weight: 600;
  height:50px;
  width:150px;
  transition: all 150ms ease-in-out;
  
  border: 1px solid #012880;
  background-image: linear-gradient(-180deg, #FF89D6 0%, #C01F9E 100%);
  box-shadow: 0 0.5rem 0.625rem 0 rgba(0,0,0,0.2),
              0 -0.125rem 0.75rem rgba(110, 15, 155, 1) inset,
              0 0.375rem 0.125rem rgba(255,255,255, 0.4) inset,
              0 0.125rem 0.25rem 0 rgba(180, 70, 207, 1) inset;
            top: 0px;
            left: 0px;
        }
        .button20:hover {
  filter: brightness(1.1);
}

.button20:active {
  transform: scale(.96);
}
        .bu {
            width:420px;
            height:80px;
            text-align:right;
            padding:15px;
        }
        .bu1 {
            width:420px;
            height:50px;
            text-align:right;
            padding:15px;
        }
       
        .auto-style1 {
            width: 100%;
            height: 66px;
        }
       
        .auto-style2 {
            height: 28px;
        }
        .button {
            display: inline-block;
            outline: none;
            cursor: pointer;
            font-size: 14px;
            line-height: 1;
            height:50px;
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
            color: #fff;
            background-color: #1ED760;
            }
                    .button:hover{
                        transform: scale(1.04);
                        background-color: #21e065;
                    }
                    .button1 {
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
            color: #fff;
            height:50px;
            background-color: rgb(252, 127, 127);
            }
                    .button1:hover{
                        transform: scale(1.04);
                        background-color: rgb(255, 0, 0);
                    }
       
    </style>
    <script>
        function acceptonlynum(evt) {
            a = evt.keycode
            k = document.getElementById("TextBox3").value
            if (k.length == 10) {
                return false;
            }
            if (a < 48 || a > 57) {
                return false;
                return true;
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="page">
        <div class="had">

        </div>
        <div class="input-text">
            <asp:Label ID="Label6" runat="server" Text="Mobile Number&lt;span&gt;*&lt;/span&gt;" ForeColor="Black"></asp:Label><br />
            <asp:TextBox ID="TextBox6" runat="server" placeholder="Your Answer" onkeypress="return acceptonlynum(event)" CssClass="TextBox" TextMode="Number" ></asp:TextBox>
        </div>
        <div class="bu1">
            <table class="auto-style1">
                <tr>
                    <th class="auto-style2">
                        &nbsp;</th>
                    <td class="auto-style2">
                        <asp:Button ID="Button4" runat="server" CssClass="button20" Text="SEARCH" OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>
            </div>
        <div class="input-text">
            <asp:Label ID="Label1" runat="server" Text="Name&lt;span&gt;*&lt;/span&gt;" ForeColor="Black"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Answer" CssClass="TextBox" ></asp:TextBox>
        </div>
        <div class="input-text">
            <asp:Label ID="Label2" runat="server" Text="Father's Name&lt;span&gt;*&lt;/span&gt;" ForeColor="Black"></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Answer" CssClass="TextBox" ></asp:TextBox>
        </div>
        <div class="input-text">
            <asp:Label ID="Label3" runat="server" Text="Mobile Number&lt;span&gt;*&lt;/span&gt;" ForeColor="Black"></asp:Label><br />
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Your Answer" onkeypress="return acceptonlynum(event)" CssClass="TextBox" TextMode="Number" ></asp:TextBox>
        </div>
        <div class="input-text">
            <asp:Label ID="Label4" runat="server" Text="Email_ID&lt;span&gt;*&lt;/span&gt;" ForeColor="Black"></asp:Label><br />
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Your Answer" CssClass="TextBox" TextMode="Email" ></asp:TextBox>
        </div>
        <div class="input-text">
            <asp:Label ID="Label5" runat="server" Text="Course Name and Year or Semester&lt;span&gt;*&lt;/span&gt;" ForeColor="Black"></asp:Label><br />
            <asp:TextBox ID="TextBox5" runat="server" placeholder="BCA 2nd Year" CssClass="TextBox" ></asp:TextBox>
        </div>
        <div class="bu">
            <table class="auto-style1">
                <tr>
                    <th class="auto-style2">
                        <asp:Button ID="Button3" runat="server" CssClass="button" Text="UPDATE" OnClick="Button3_Click" />
                    </th>
                    <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" CssClass="button1" Text="Delete" OnClick="Button1_Click1" />
                    </td>
                </tr>
                <tr>
                    <th rowspan="2" class="auto-style2">
                        &nbsp;</th>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
                        <asp:Button ID="Button5" runat="server" CssClass="button" Text="PRINT" OnClick="Button5_Click" />
        </div>
    
    </div>
    </form>
</body>
</html>
