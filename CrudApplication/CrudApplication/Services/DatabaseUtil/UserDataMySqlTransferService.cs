using CrudApplication.Modals;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudApplication.Services.DatabaseUtil
{
    public class UserDataMySqlTransferService : IDataTransferService<User>
    {
        public string ConvertUserToSqlQueryString(User user)
        {
            String insertUserSqlQueryString= "INSERT INTO tbl_user(name,email,address,address2,city,province,postalcode,gender,availability,username,password,comment)" +
                "VALUES ('" + user.name + "','" + user.email + "','" + user.address + "','" + user.address2 + "','"+user.city+"','"+user.province+"','"+user.postalCode+"','"+user.gender+"','"+user.availability+"','"+user.username+"','"+user.password+"','"+user.comment+"')";
            return insertUserSqlQueryString;
        }
    }
}