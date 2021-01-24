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