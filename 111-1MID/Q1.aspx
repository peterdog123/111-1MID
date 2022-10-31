<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Q1.aspx.cs" Inherits="_111_1MID.Q1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>線上掛號系統</h1>
            <h2>||掛號資訊</h2>
            <asp:Panel ID="p1_Info" runat="server" Width="500px" BorderWidth="1px">
                <h3><asp:Label ID="lb_Type" runat="server" Text="初診"></asp:Label></h3>
                <asp:RadioButton ID="rb_ID" runat="server" GroupName="rb_Type" Checked="true"  Text="身分證字號"/>
                <asp:RadioButton ID="rb_Hid" runat="server" GroupName="rb_Type" Text="病歷號" />
                <asp:TextBox ID="tb_Account" runat="server" Width="400px" Height="20px" AutoPostBack="true" OnTextChanged="tb_Account_TextChanged"></asp:TextBox><br />
                連絡電話：(選填)
                <asp:TextBox ID="tb_Phone" runat="server" Width="300px" Height="20px"></asp:TextBox>
                <asp:Button ID="btn_Submit" runat="server" Text="掛號" Width="80px" Visible="false"  OnClick="btn_Submit_Click"/>
            </asp:Panel>
            <br />
            <asp:Panel ID="p1_Msg" runat="server" Width="500px" BorderWidth="1px" Visible="false">
                <asp:Label ID="lb_Msg" runat="server" Text=""></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Q1.aspx">重新填寫</asp:HyperLink>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
