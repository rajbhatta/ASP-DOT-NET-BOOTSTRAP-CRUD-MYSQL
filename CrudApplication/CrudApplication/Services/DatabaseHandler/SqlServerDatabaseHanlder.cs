using CrudApplication.Services.DbEnvironment;

namespace CrudApplication.Services.DatabaseHandler
{
    public class SqlServerDatabaseHanlder
    {
        private IDbPropertyService _dbPropertyService;

        public SqlServerDatabaseHanlder(IDbPropertyService dbPropertyService)
        {
            _dbPropertyService = dbPropertyService;
        }
    }
}