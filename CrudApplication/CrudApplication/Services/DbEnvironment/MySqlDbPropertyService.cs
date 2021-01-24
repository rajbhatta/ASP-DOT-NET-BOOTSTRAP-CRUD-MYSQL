using System.Configuration;

namespace CrudApplication.Services.DbEnvironment
{
    public class MySqlDbPropertyService: IDbPropertyService
    {
        public string GetBaseUrl()
        {
            return ConfigurationManager.ConnectionStrings["MySqlHost"].ToString();
        }

        public string GetUserName()
        {
            return ConfigurationManager.ConnectionStrings["MySqlUsername"].ToString();
        }

        public string GetPassword()
        {
            return ConfigurationManager.ConnectionStrings["MySqlPassword"].ToString();
        }

        public string GetDatabaseName()
        {
            return ConfigurationManager.ConnectionStrings["MySqlDatabaseName"].ToString();
        }

        public string GetProviderName()
        {
            return ConfigurationManager.ConnectionStrings["MySqlProviderName"].ToString();
        }

        public string GetCompleteMySqlConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["MySqlFullConnectionString"].ToString();
            
        }
    }
}