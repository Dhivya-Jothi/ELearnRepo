using System;
using System.Data.SqlClient;


namespace ELearningPortal
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Response.Write("Welcome");

		}
		protected void LoginPage_OnClick(object sender, EventArgs e)
		{
			UserRespositary userRespositary=new UserRespositary();
			SqlConnection dbConnection = new SqlConnection(@"Data Source=DESKTOP-1L9M5BM\SQLEXPRESS;Initial Catalog=ElearningPortal;Integrated Security=True");
			string query = "SP_lOGIN_PROCEDURE";              //stored prodecure

			string username = txtName.Text;
			string password = txtPassword.Text;
			//UserRepository user = new UserRepository();
			bool isValid = userRespositary.ValidateLogin(username, password);
			if (isValid)
				Response.Write("Sign in successfully completed");
			else
				Response.Write("Signing in is not completed..Please create your account");
		}

		protected void SignUp_OnClick(object sender, EventArgs e)
		{
			Response.Redirect("SignUp.aspx");
		}
	}
		
}
