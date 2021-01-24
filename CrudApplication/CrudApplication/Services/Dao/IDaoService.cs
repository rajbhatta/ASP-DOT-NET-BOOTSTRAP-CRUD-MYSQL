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
        void Save(T t);
        List<T> Get();
        T GetById(T t);
        void Delete(T t);
    }
}
