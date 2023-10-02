using System;
using System.Data.SqlClient;

namespace ELibraryManagement
{
    internal class sqlConnection
    {
        public object State { get; internal set; }

        public static implicit operator sqlConnection(SqlConnection v)
        {
            throw new NotImplementedException();
        }
    }
}