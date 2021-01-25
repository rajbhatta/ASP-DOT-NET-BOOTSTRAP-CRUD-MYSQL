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
