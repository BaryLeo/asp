using Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// UserDao 的摘要说明
/// </summary>
public class UserDao
{
    DataClassesDataContext data = new DataClassesDataContext();
    
    public UserDao()
    {
        
    }
    //
    // 返回1为存储成功，返回0为失败
    //
    public int saveUser(User u)
    {

        try
        {
            data.User.InsertOnSubmit(u);
            data.SubmitChanges();
            return 1;
        }
        catch
        {

        }
        return 0;
    }

    //通过ID获取User信息
    public User getUser(string id)
    {
        var dbUser = from tbUser in data.User
                     where tbUser.id.Equals(id)
                     select new
                     {
                         tbUser.id,
                         tbUser.password,
                         tbUser.isComstomer
                     };

        User u = new User();
        foreach (var i in dbUser)
        {
            u.id = i.id;
            u.password = i.password;
            u.isComstomer = i.isComstomer;
        }
            return u;
    }

}