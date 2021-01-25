using System.Configuration;

namespace CrudApplication.Services.DbEnvironment
{
    public class MySqlDbPropertyService: IDbPropertyService
    {
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["WebAppConnectionString"].ToString();
            
        }
    }
}