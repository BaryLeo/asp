<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Style/css/Home.css" rel="stylesheet" />
</head>
<body>
    <style>
        li {list-style-type:none}
         a:link { text-decoration: none}
        .search-button {}
    </style>
    <form id="form1" runat="server">
          <div class="content">
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
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Style/Image/search.png" PostBackUrl="~/Home.aspx" Width="22px" Height="22px" CssClass="search-button"/>
                    </div>
                </div>
            </header>
            <div id="app">
                <div class="body-list">
                    <div class="list-tag">
                        <asp:Label ID="Label9" runat="server" Text="食物列表" style="font-size:18px;"></asp:Label>
                    </div>
                    <ul class="list-content">
                        <li class="card">
                            <div class="img">
                                <a href="FoodDetail.aspx">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Style/Image/food.png" Height="125px" Width="220px" />
                                </a>
                            </div>
                            <div class="info">
                                 <a href="FoodDetail.aspx">
                                     <asp:Label ID="Label1" runat="server" Text="韩式年糕" CssClass="info-title"></asp:Label><br />
                                     <asp:Label ID="Label3" runat="server" Text="5分" CssClass="info-score"></asp:Label><br />
                                     <asp:Label ID="Label2" runat="server" Text="￥20" CssClass="info-price"></asp:Label>
                                </a>
                                <asp:Button ID="Button" runat="server" Text="立即购买" class="order-button" />                   
                            </div>
                        </li>
                        <li class="card">
                            <div class="img">
                                <a href="FoodDetail.aspx">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Style/Image/food.png" Height="125px" Width="220px" />
                                </a>
                            </div>
                            <div class="info">
                                 <a href="FoodDetail.aspx">
                                     <asp:Label ID="Label4" runat="server" Text="韩式年糕" CssClass="info-title"></asp:Label><br />
                                     <asp:Label ID="Label5" runat="server" Text="5分" CssClass="info-score"></asp:Label><br />
                                     <asp:Label ID="Label6" runat="server" Text="￥20" CssClass="info-price"></asp:Label>
                                </a>
                                <asp:Button ID="Button2" runat="server" Text="立即购买" class="order-button" />   
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="aside-list">
                    <div class="list-tag">
                        <asp:Label ID="Label10" runat="server" Text="猜你喜欢" style="font-size:18px;"></asp:Label>
                    </div>
                    <ul class="list-content">
                        <li class="card">
                            <div class="img">
                                <a href="FoodDetail.aspx">
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Style/Image/food.png" Height="118px" Width="162px" />
                                </a>
                            </div>
                            <div class="aside-info">
                                 <a href="FoodDetail.aspx">
                                     <asp:Label ID="Label11" runat="server" Text="韩式年糕" CssClass="aside-info-title"></asp:Label>
                                     <asp:Label ID="Label12" runat="server" Text="5分" CssClass="aside-info-score"></asp:Label>
                                     <asp:Label ID="Label13" runat="server" Text="￥20" CssClass="aside-info-price"></asp:Label>
                                </a>
                            </div>
                        </li>
                        <li class="card">
                            <div class="img">
                                <a href="FoodDetail.aspx">
                                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Style/Image/food.png" Height="118px" Width="162px" />
                                </a>
                            </div>
                            <div class="aside-info">
                                 <a href="FoodDetail.aspx">
                                     <asp:Label ID="Label14" runat="server" Text="韩式年糕" CssClass="aside-info-title"></asp:Label>
                                     <asp:Label ID="Label15" runat="server" Text="5分" CssClass="aside-info-score"></asp:Label>
                                     <asp:Label ID="Label16" runat="server" Text="￥20" CssClass="aside-info-price"></asp:Label>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </form>
</body>
</html>