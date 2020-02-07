using System;
using System.Data.SqlClient;

namespace ELearningPortal
{
	public partial class SignUp : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected virtual void SignUp_Page(object sender, EventArgs e)
		{
			SqlConnection dbConnection = new SqlConnection(@"Data Source=DESKTOP-1L9M5BM\SQLEXPRESS;Initial Catalog=ElearningPortal;Integrated Security=True");
			string command = "USER_PROCEDURE";              //stored prodecure
			using (SqlCommand insertCommand = new SqlCommand(command, dbConnection))
			{
				insertCommand.CommandType = System.Data.CommandType.StoredProcedure;
				insertCommand.Parameters.AddWithValue("@userName", txtName.Text);
				insertCommand.Parameters.AddWithValue("@dateOfBirth", txtBirth.Text);
				insertCommand.Parameters.AddWithValue("@mailId", mail.Text);
				insertCommand.Parameters.AddWithValue("@mobileNumber", mobileNumber.Text);
				insertCommand.Parameters.AddWithValue("@password", txtPassword.Text);
				insertCommand.Parameters.AddWithValue("@confirmPassword", txtConfirmPassword.Text);
				insertCommand.Parameters.AddWithValue("@mediumOfStudy", mediumOfStudy.Text);
				dbConnection.Open();
				SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
				sqlDataAdapter.InsertCommand = insertCommand;
				int affectedRows = insertCommand.ExecuteNonQuery();
				if (affectedRows >= 1)
				{
					Console.WriteLine("Records added successfully");
				}
				else
				{
					Console.WriteLine("Records Does not Added...");
				}
				dbConnection.Close();
			}
		}
	}
}