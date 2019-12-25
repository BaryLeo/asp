<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="MyOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Style/css/3.css" rel="stylesheet" />
</head>
<body>
   <style>
        li {list-style-type:none}
        a:link { text-decoration: none}
    </style>
    <form id="form1" runat="server">
         <header>
                <div class="header-bar">
                    <a href="Login.aspx">
                        <asp:Label ID="Label1" runat="server" Text="退出账号"></asp:Label><link href="Style/css/MyOrder.css" rel="stylesheet" />
                    </a>
                </div>
                <div class="header-content">
                    <div class="header-title">     
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Style/Image/logo.png" Height="64px" Width="87px"/>
                    </div>
                </div>
            </header>
              <div class="body-list">                 
                    <div class="list-tag">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Style/Image/return.png" PostBackUrl="~/Home.aspx" Height="17px" Width="22px" CssClass="return-button"/>
                        <asp:Label ID="Label9" runat="server" Text="我的订单" style="font-size:18px;"></asp:Label>
                    </div>
                    <ul class="order-list">
                        <li class="card">
                            <div class="img">
                                <a href="FoodDetail.aspx">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Style/Image/food.png" Height="125px" Width="220px" />
                                </a>
                            </div>
                            <div class="info">
                                 <a href="FoodDetail.aspx">
                                     <asp:Label ID="Label5" runat="server" Text="韩式年糕" CssClass="info-title"></asp:Label><br />
                                     <asp:Label ID="Label7" runat="server" Text="￥20" CssClass="info-price"></asp:Label><br />
                                     <asp:Label ID="Label10" runat="server" Text="日期：2019-9-10" CssClass="info-date"></asp:Label><br />
                                     <asp:Label ID="Label18" runat="server" Text="状态：等待配送" CssClass="info-status"></asp:Label>
                                </a>               
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
                                     <asp:Label ID="Label8" runat="server" Text="韩式年糕X2" CssClass="info-title"></asp:Label><br />
                                     <asp:Label ID="Label12" runat="server" Text="￥20" CssClass="info-price"></asp:Label><br />
                                     <asp:Label ID="Label15" runat="server" Text="日期：2019-9-10" CssClass="info-date"></asp:Label><br />
                                     <asp:Label ID="Label17" runat="server" Text="状态：已完成" CssClass="info-status"></asp:Label>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
    </form>
</body>
</html>
