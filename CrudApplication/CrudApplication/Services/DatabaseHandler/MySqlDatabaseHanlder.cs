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
            _mySqlConnection = CreateDbConnection();
        }

        //Saves users to the database
        public int SaveUserToDatabase(string queryString)
        {
            openConnection();
            MySqlCommand mySqlCommand = new MySqlCommand(queryString, _mySqlConnection);
            mySqlCommand.ExecuteNonQuery();
            int returnedValue = (int)mySqlCommand.LastInsertedId;
            closeConnection();
            return returnedValue;
        }

        //Run query to the database. A query can be update and delete.
        public int RunQueryToDatabase(string queryString)
        {
            openConnection();
            MySqlCommand mySqlCommand = new MySqlCommand(queryString, _mySqlConnection);
            int returnedValue = mySqlCommand.ExecuteNonQuery();
            closeConnection();
            return returnedValue;
        }

        //Provides MySqlCommand required for GridView
        public MySqlCommand provideMySqlCommandForSelectQuery()
        {
            return new MySqlCommand("SELECT * from tbl_user");
        }

        //Provides current connection
        public MySqlConnection provideCurrentConection()
        {
            return _mySqlConnection;
        }

        //Opens database connection
        private void openConnection()
        {
            _mySqlConnection.Open();
        }

        //Closes database connection
        private void closeConnection()
        {
            _mySqlConnection.CloseAsync();
        }

        //Creates database connection
        private MySqlConnection CreateDbConnection()
        {
            string mySqlConnectionString = _dbPropertyService.GetConnectionString();
            return new MySqlConnection(mySqlConnectionString);
        }
    }
}