using CrudApplication.Services.DbEnvironment;

namespace CrudApplication.Services.DatabaseHandler
{
    public class OracleDatabaseHandler
    {
        private IDbPropertyService _dbPropertyService;

        public OracleDatabaseHandler(IDbPropertyService dbPropertyService)
        {
            _dbPropertyService = dbPropertyService;
        }
    }
}