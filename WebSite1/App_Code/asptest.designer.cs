﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="asp")]
public partial class asptestDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region 可扩展性方法定义
  partial void OnCreated();
  #endregion
	
	public asptestDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["aspConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public asptestDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public asptestDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public asptestDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public asptestDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<asptest> asptest
	{
		get
		{
			return this.GetTable<asptest>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.asptest")]
public partial class asptest
{
	
	private string _name;
	
	private string _gender;
	
	public asptest()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="NChar(10)")]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this._name = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_gender", DbType="NChar(10)")]
	public string gender
	{
		get
		{
			return this._gender;
		}
		set
		{
			if ((this._gender != value))
			{
				this._gender = value;
			}
		}
	}
}
#pragma warning restore 1591