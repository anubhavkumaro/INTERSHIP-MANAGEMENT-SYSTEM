<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
       
        .auto-style1 {
            width: 100%;
            height: 66px;
        }
       
        .auto-style2 {
            height: 28px;
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

            }
            return true;
            
            
            
        }
        function acceptonlychar(evt) {
            a = evt.keyCode
            if ((a < 65 || a > 122) || (a > 91 && a <= 96)) {
                return false;

            }
            return true;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="page">
        <div class="had">

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
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Teacher Login</asp:LinkButton>
                    </th>
                    <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" CssClass="button20" Text="Sumbit" OnClick="Button1_Click1" />
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
        </div>
    
    </div>
    </form>
</body>
</html>
