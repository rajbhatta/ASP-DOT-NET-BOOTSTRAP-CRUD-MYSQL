using System;
using System.Collections.Generic;
using CrudApplication.Modals;
using CrudApplication.Services.DatabaseHandler;
using CrudApplication.Services.DatabaseUtil;

namespace CrudApplication.Services.Dao
{
    public class MySqlDaoService: IDaoService<User>
    {
        private MySqlDatabaseHanlder _mySqlDatabaseHanlder;
        private IDataTransferService<User> _dataTransferService;

        public MySqlDaoService(MySqlDatabaseHanlder mySqlDatabaseHandler)
        {
            _mySqlDatabaseHanlder = mySqlDatabaseHandler;
            _dataTransferService = new UserDataMySqlTransferService();
        }
        public int Save(User t)
        {
            string queryString = _dataTransferService.ConvertUserToSqlQueryString(t);
            _mySqlDatabaseHanlder.SaveUserToDatabase(queryString);
            return 1;
        }
      
        public void Delete(User t)
        {
            throw new System.NotImplementedException();
        }

        public int update(User t)
        {
            throw new NotImplementedException();
        }
    }
}