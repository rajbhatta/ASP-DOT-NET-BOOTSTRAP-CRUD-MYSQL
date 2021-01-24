namespace CrudApplication.Services.DbEnvironment
{
    public interface IDbPropertyService
    {
        string GetBaseUrl();
        string GetUserName();
        string GetPassword();
        string GetDatabaseName();

        string GetProviderName();
        string GetCompleteMySqlConnectionString();
    }
}