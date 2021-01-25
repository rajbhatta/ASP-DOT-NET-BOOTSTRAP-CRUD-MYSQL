using System.Configuration;

namespace CrudApplication.Services.DbEnvironment
{
    public class MySqlDbPropertyService: IDbPropertyService
    {
        //Provides MySQL connection string required for MySQL database connection.
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["WebAppConnectionString"].ToString();
            
        }
    }
}