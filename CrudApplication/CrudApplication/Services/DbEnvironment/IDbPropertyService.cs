namespace CrudApplication.Services.DbEnvironment
{
    //Provides database property such as connection string
    public interface IDbPropertyService
    {
        string GetConnectionString();
    }
}