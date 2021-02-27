## CODING STYLE #@
```java
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudApplication.Exception
{
    public class MySqlException : System.Exception
    {
        public MySqlException()
        {
        }

        public MySqlException(string message): base(message)
        {

        }

        public MySqlException(string message, System.Exception inner): base(message, inner)
        {

        }
    }
}
```

```java
namespace CrudApplication.Modals
{
    public class User
    {
        public string name { get; set; }

        public string email { get; set; }

        public string address { get; set; }

        public string address2 { get; set; }

        public string city { get; set; }

        public string province { get; set; }

        public string postalCode { get; set; }

        public string gender { get; set; }

        public string programmingSkills { get; set; }

        public string availability { get; set; }

        public string username { get; set; }

        public string password { get; set; }

        public string comment { get; set; }


    }
}
```

```java
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CrudApplication.Exception;

namespace CrudApplication.Services.Dao
{
    //Performs DAO operations such as save, update and delete for generic type modal. 
    //MySqDaoService is targeted for MySQL database
    //OracleDaoService is targeted for Oracle database which is out of scope of this project.
    //SqlServerDaoService is targeted for the SqlServer database which is out of scope of this project.
    interface IDaoService<T>
    {
        int Save(T t);
        int update(T t);
        void Delete(T t);
    }
}
```

```java
using System;
using System.Collections.Generic;
using CrudApplication.Modals;
using CrudApplication.Services.DatabaseHandler;
using CrudApplication.Services.DatabaseUtil;

namespace CrudApplication.Services.Dao
{
    public class MySqlDaoService: IDaoService<User>
    {
        private MySqlDatabaseHanlder _mySqlDatabaseHanlder;
        private IDataTransferService<User> _dataTransferService;

        public MySqlDaoService(MySqlDatabaseHanlder mySqlDatabaseHandler)
        {
            _mySqlDatabaseHanlder = mySqlDatabaseHandler;
            _dataTransferService = new UserDataMySqlTransferService();
        }
        public int Save(User t)
        {
            string queryString = _dataTransferService.convertSQLQueryForSave(t);
            _mySqlDatabaseHanlder.SaveUserToDatabase(queryString);
            return 1;
        }
      
        public void Delete(User t)
        {
            throw new System.NotImplementedException();
        }

        public int update(User t)
        {
            throw new NotImplementedException();
        }
    }
}
```

```java
using System.Collections.Generic;
using CrudApplication.Modals;

namespace CrudApplication.Services.Dao
{
    public class OracleDaoService: IDaoService<User>
    {
        public int Save(User t)
        {
            throw new System.NotImplementedException();
        }

        public int update(User t)
        {
            throw new System.NotImplementedException();
        }

        public void Delete(User t)
        {
            throw new System.NotImplementedException();
        }
    }
}
```

```java
using System.Collections.Generic;
using CrudApplication.Modals;

namespace CrudApplication.Services.Dao
{
    public class SqlServerDaoService : IDaoService<User>
    {
        public int Save(User t)
        {
            throw new System.NotImplementedException();
        }

        public int update(User t)
        {
            throw new System.NotImplementedException();
        }

        public void Delete(User t)
        {
            throw new System.NotImplementedException();
        }
    }
}
```