using System;
using System.Data.SqlClient;
using System.Data;
namespace ELearningPortal
{
	public class UserRespositary
	{
		public bool ValidateLogin(string userName, string password)
		{
			bool isValue = false;
			SqlConnection dbConnection = new SqlConnection(@"Data Source=DESKTOP-1L9M5BM\SQLEXPRESS;Initial Catalog=ElearningPortal;Integrated Security=True");
			string query = "SP_lOGIN_PROCEDURE";              //stored prodecure
			using (SqlCommand command = new SqlCommand(query, dbConnection))
			{
				command.CommandType = CommandType.StoredProcedure;
				SqlParameter param = new SqlParameter();
				param.ParameterName = "@userName";
				param.Value = userName;
				param.SqlDbType = SqlDbType.VarChar;
				command.Parameters.Add(param);

				param = new SqlParameter();
				param.ParameterName = "@password";
				param.Value = password;
				param.SqlDbType = SqlDbType.VarChar;
				command.Parameters.Add(param);
				dbConnection.Open();
				SqlDataReader data = command.ExecuteReader();
				if (data.HasRows)
					isValue = true;
			}
			return isValue;
		}
	}
}