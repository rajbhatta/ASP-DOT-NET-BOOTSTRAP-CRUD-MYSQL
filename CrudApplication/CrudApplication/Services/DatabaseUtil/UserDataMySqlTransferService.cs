using CrudApplication.Modals;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudApplication.Services.DatabaseUtil
{
    public class UserDataMySqlTransferService : IDataTransferService<User>
    {
        public string convertSQLQueryForSave(User user)
        {
            String insertUserSqlQueryString= "INSERT INTO tbl_user(name,email,address,address2,city,province,postalcode,gender,availability,username,password,comment)" +
                "VALUES ('" + user.name + "','" + user.email + "','" + user.address + "','" + user.address2 + "','"+user.city+"','"+user.province+"','"+user.postalCode+"','"+user.gender+"','"+user.availability+"','"+user.username+"','"+user.password+"','"+user.comment+"')";
            return insertUserSqlQueryString;
        }

        public string sqlQueryforSaveUserProgrammingSkill(User user, int userId)
        {
            String insertUserSqlQueryString = "INSERT INTO tbl_user_programming_skills(uid,skills)" +
                 "VALUES ('" + userId + "','" + user.programmingSkills + "')";
            return insertUserSqlQueryString;
        }

        public string convertSqlQueryForUpdate(string name,string email, string address, string username, string comment, int id)
        {
            string updateQuery = "update tbl_user set name='" + name + "', email='" + email + "',address='" + address + "', username='" + username + "',comment='" + comment + "' where id='" + id + "' ";
            return updateQuery;
        }

        public string createSqlQueryForDelete(int id)
        {
            string deleteUserQuery = "DELETE from tbl_user WHERE id='" + id + "'";
            return deleteUserQuery;
        }
    }
}