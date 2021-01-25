using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CrudApplication.Exception;

namespace CrudApplication.Services.Dao
{
    interface IDaoService<T>
    {
        int Save(T t);
        int update(T t);
        void Delete(T t);
    }
}
