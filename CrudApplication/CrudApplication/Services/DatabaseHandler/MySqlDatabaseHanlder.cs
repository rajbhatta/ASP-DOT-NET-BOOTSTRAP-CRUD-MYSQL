using CrudApplication.Services.DbEnvironment;

namespace CrudApplication.Services.DatabaseHandler
{
    public class MySqlDatabaseHanlder
    {
        private IDbPropertyService _dbPropertyService;

        public MySqlDatabaseHanlder(IDbPropertyService dbPropertyService)
        {
            _dbPropertyService = dbPropertyService;
        }
        
        
    }
}