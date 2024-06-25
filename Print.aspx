<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print</title>
    <style>
        .page {
            width:950px;
            height:1340px;
            background-color:white;
            margin:auto;
        }
        body {
            background-color:white;
        }
        .print {
            margin-left:2%;
        }
    </style>
    <script>
        function prints() {
            
            
                window.print()
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="print">
            <asp:ImageButton ID="ImageButton1" runat="server" OnClientClick="prints();" Height="33px" ImageUrl="~/Image/prints.png" Width="40px" />
        </div>
    <div class="page">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="945px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" SortExpression="Father_Name" />
                <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile_Number" SortExpression="Mobile_Number" />
                <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                <asp:BoundField DataField="Course_Name_Year_Sem" HeaderText="Course_Name_Year_Sem" SortExpression="Course_Name_Year_Sem" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
