using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebAppMVC.ClassCommon
{
    public class SqlDataProvider
    {
        static string strConStr = System.Configuration.ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;
        /// <summary>
        /// Global SQL server connection
        /// </summary>
        public static SqlConnection connection;

        public static SqlConnection GetConnection()
        {
            if (connection == null) { connection = new SqlConnection(strConStr); }
            if (connection.State == ConnectionState.Closed)
                connection.Open();
            return connection;
        }
       
    }
}