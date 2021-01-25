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
        public void Save(User t)
        {
            string queryString = _dataTransferService.ConvertUserToSqlQueryString(t);
            _mySqlDatabaseHanlder.SaveUserToDatabase(queryString);
        }

        public List<User> Get()
        {
            throw new System.NotImplementedException();
        }

        public User GetById(User t)
        {
            throw new System.NotImplementedException();
        }

        public void Delete(User t)
        {
            throw new System.NotImplementedException();
        }
    }
}