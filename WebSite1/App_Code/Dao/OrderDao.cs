using Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// OrderDao 的摘要说明
/// </summary>
public class OrderDao
{
    OrderDataContext orderDB = new  OrderDataContext();
    public OrderDao()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
        
    }

    //存入的时候Order.id不需要赋值
    int saveOrder(Order order)
    {
        try
        {
            orderDB.Order.InsertOnSubmit(order);
            orderDB.SubmitChanges();
            return 1;
        }
        catch
        {

        }
        return 0;
    }

    //通过用户ID获取订单列表
    List<Order> getOrdersBuUserId(string userId)
    {
        List<Order> orders = new List<Order>();
        var dbOrd = from tbOrd in orderDB.Order
                    where tbOrd.userId.Equals(userId)
                    select new {
                        tbOrd.id,     //订单ID
                        tbOrd.userId,  //订单所属用户的ID
                        tbOrd.quantity, //下单商品的数量
                        tbOrd.location, //下单地址
                        tbOrd.commodityId,//商品信息ID
                        tbOrd.status,//订单状态
                        tbOrd.date //下单时间
                    };

        foreach(var i in dbOrd)
        {
            Order order = new Order();
            order.id = i.id;
            order.date = i.date;
            order.commodityId = i.commodityId;
            order.location = i.location;
            order.quantity = i.quantity;
            order.status = i.status;
            order.userId = i.userId;
            orders.Add(order);
        }
        return orders;
    }

    //通过用户ID获取订单列表
    Order getOrdersByOrderId(int id)
    {
        var dbOrd = from tbOrd in orderDB.Order
                    where tbOrd.id == id
                    select new
                    {
                        tbOrd.id,     //订单ID
                        tbOrd.userId,  //订单所属用户的ID
                        tbOrd.quantity, //下单商品的数量
                        tbOrd.location, //下单地址
                        tbOrd.commodityId,//商品信息ID
                        tbOrd.status,//订单状态
                        tbOrd.date //下单时间
                    };

        Order order = new Order();
        foreach (var i in dbOrd)
        {
            
            order.id = i.id;
            order.date = i.date;
            order.commodityId = i.commodityId;
            order.location = i.location;
            order.quantity = i.quantity;
            order.status = i.status;
            order.userId = i.userId;
          
        }
        return order;
    }
}