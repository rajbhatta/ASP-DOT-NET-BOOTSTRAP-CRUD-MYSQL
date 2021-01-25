using CrudApplication.Services.DbEnvironment;
using MySql.Data.MySqlClient;

namespace CrudApplication.Services.DatabaseHandler
{
    public class MySqlDatabaseHanlder
    {
        private IDbPropertyService _dbPropertyService;
        private MySqlConnection _mySqlConnection;

        public MySqlDatabaseHanlder(IDbPropertyService dbPropertyService)
        {
            _dbPropertyService = dbPropertyService;
            _mySqlConnection= CreateDbConnection();
        }

        public void SaveUserToDatabase(string queryString)
        {
            _mySqlConnection.Open();
            MySqlCommand mySqlCommand = new MySqlCommand(queryString,_mySqlConnection);
            mySqlCommand.ExecuteReader();
            _mySqlConnection.CloseAsync();
        }

        private MySqlConnection CreateDbConnection()
        {
            string mySqlConnectionString = _dbPropertyService.GetConnectionString();
            return new MySqlConnection(mySqlConnectionString);
        }
    }
}