<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FoodDetail.aspx.cs" Inherits="FoodDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <header>
                <div class="header-bar">
                    <a href="Login.aspx">
                        <asp:Label ID="Label7" runat="server" Text="退出账号"></asp:Label>
                    </a>
                    <a href="MyOrder.aspx">
                        <asp:Label ID="Label8" runat="server" Text="我的订单" style="padding-left:20px"></asp:Label>
                    </a>
                </div>
                <div class="header-content">
                    <div class="header-title">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Style/Image/logo.png" Height="64px" Width="87px"/>
                    </div>
                    <div class="header-search">
                        <input class="header-search-input" type="text" placeholder="搜索食物" style="padding-left:10px"/>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Style/Image/search.png" PostBackUrl="~/Home.aspx" Height="22px" Width="22px"/>
                    </div>
                </div>
            </header>
            <div class="food-detail">
                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Style/Image/return.png" PostBackUrl="~/Home.aspx" Height="17px" Width="22px" style="margin-top:20px;margin-left:20px"/>
                 <div class="info">                       
                    <asp:Label ID="Label1" runat="server" Text="韩式年糕" CssClass="info-title"></asp:Label><br/>
                    <asp:Label ID="Label3" runat="server" Text="5分" CssClass="info-score"></asp:Label><br/>
                    <asp:Label ID="Label2" runat="server" Text="￥20" CssClass="info-price"></asp:Label>
                 </div>
                 <asp:Button ID="Button1" runat="server" Text="立即购买" CssClass="order-button" />
                 <div class="img">
                    <a href="Style/Image/food.png">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Style/Image/food.png" Height="224px" Width="338px" />
                    </a>
                 </div>
            </div>
        </div>
    </form>
</body>
</html>
