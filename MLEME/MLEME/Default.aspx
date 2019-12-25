<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="Style/css/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <header class="logo">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Style/Image/logo.png" Height="100px" Width="131px"/> 
         </header>
         <div class="content">
                <div class="promotion-banner">
                     <asp:Image ID="Image2" runat="server" ImageUrl="~/Style/Image/www.jpg" Height="422px"/>
                </div>
                <div class="login-section">
                    <asp:Label ID="Label1" runat="server" Text=" 账号登录" style="padding-left:120px"></asp:Label>
                    <div>
                        <div class="login-name">
                            <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName" Text="帐号"></asp:Label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="text-box"></asp:TextBox>
                        </div>
                        <div class="login-password">
                            <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" Text="密码"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="text-box"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="登录" class="login-button" PostBackUrl="~/Home.aspx" /><br/>
                    <asp:Label ID="Label2" runat="server" Text="还没有账号？免费注册" style="margin-left:90px"></asp:Label>
                </div>
         </div>
    </form>
</body>
</html>
