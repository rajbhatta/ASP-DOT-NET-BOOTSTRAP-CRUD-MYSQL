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
            openConnection();
            MySqlCommand mySqlCommand = new MySqlCommand(queryString,_mySqlConnection);
            mySqlCommand.ExecuteReader();
            closeConnection();
        }

        public int RunQueryToDatabase(string queryString)
        {
            openConnection();
            MySqlCommand mySqlCommand = new MySqlCommand(queryString, _mySqlConnection);
            int returnedValue= mySqlCommand.ExecuteNonQuery();
            closeConnection();
            return returnedValue;
        }

        public MySqlCommand provideMySqlCommandForSelectQuery()
        {
            return new MySqlCommand("SELECT * from tbl_user");
        }

        public MySqlConnection provideCurrentConection()
        {
            return _mySqlConnection;
        }

        private void openConnection()
        {
            _mySqlConnection.Open();
        }

        private void closeConnection()
        {
            _mySqlConnection.CloseAsync();
        }
        private MySqlConnection CreateDbConnection()
        {
            string mySqlConnectionString = _dbPropertyService.GetConnectionString();
            return new MySqlConnection(mySqlConnectionString);
        }
    }
}