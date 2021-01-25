using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrudApplication.Services.DatabaseUtil
{
    //Takes data from ASP.NET form and transfers into SQLQuery
    interface IDataTransferService<T>
    {
        //Creates query for insert.
        string convertSQLQueryForSave(T t);

        //Creates query for update
         string convertSqlQueryForUpdate(string name, string email, string address, string username,
            string comment, int id);

         //Creates query for delete
         string createSqlQueryForDelete(int id);
    }
}
