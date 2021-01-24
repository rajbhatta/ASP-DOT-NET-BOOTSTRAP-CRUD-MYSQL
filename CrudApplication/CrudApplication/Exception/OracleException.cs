using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudApplication.Exception
{
    public class OracleException: System.Exception
    {
        public OracleException()
        {
        }

        public OracleException(string message): base(message)
        {

        }

        public OracleException(string message, System.Exception inner): base(message, inner)
        {

        }
    }
}