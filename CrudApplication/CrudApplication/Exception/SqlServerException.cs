using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudApplication.Exception
{
    public class SqlServerException: OracleException
    {
        public SqlServerException()
        {
        }

        public SqlServerException(string message): base(message)
        {

        }

        public SqlServerException(string message, System.Exception inner): base(message, inner)
        {

        }
    }
}