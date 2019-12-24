using Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// CommodityDao 的摘要说明
/// </summary>
public class CommodityDao
{
    CommodityDataContext commodityDB = new CommodityDataContext();

    public CommodityDao()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    //存入的时候Commodity.id不需要赋值
    int saveCommodity(Commodity commodity)
    {
        try
        {
            commodityDB.Commodity.InsertOnSubmit(commodity);
            commodityDB.SubmitChanges();
            return 1;
        }
        catch
        {

        }
        return 0;
    }

    //通过用户ID获取用户自己的商品
    List<Commodity> getCommodityByUserId(string userId)
    {
        List<Commodity> commodities = new List<Commodity>();
        var dbCom = from tbCom in commodityDB.Commodity
                    where tbCom.userId.Equals(userId)
                    select new
                    {
                        tbCom.id,
                        tbCom.name,
                        tbCom.price,
                        tbCom.score,
                        tbCom.userId,
                        tbCom.photo
                    };

        foreach(var i in dbCom)
        {
            Commodity commodity = new Commodity();
            commodity.id = i.id;//商品ID
            commodity.name = i.name;//商品名
            commodity.photo = i.photo; //商品照片存储路径
            commodity.score = i.score; //商品评分
            commodity.userId = i.userId; //商品所属的用户
            commodity.price = i.price;//价格
            commodities.Add(commodity);
        }
        return commodities;
    }

    //通过商品id获取商品信息
    Commodity getCommodityById(int id)
    {
        List<Commodity> commodities = new List<Commodity>();
        var dbCom = from tbCom in commodityDB.Commodity
                    where tbCom.id == id
                    select new
                    {
                        tbCom.id,
                        tbCom.name,
                        tbCom.price,
                        tbCom.score,
                        tbCom.userId,
                        tbCom.photo
                    };

        Commodity commodity = new Commodity();
        foreach (var i in dbCom)
        {
            commodity.id = i.id;
            commodity.name = i.name;
            commodity.photo = i.photo;
            commodity.score = i.score;
            commodity.userId = i.userId;
            commodity.price = i.price;
            commodities.Add(commodity);
        }
        return commodity;
    }
}