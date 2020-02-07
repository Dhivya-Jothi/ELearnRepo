using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELearningPortal
{
	public partial class HomePage : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Home_Click(object sender, EventArgs e)
		{
			Response.Redirect("Home.aspx");
		}
		protected void Login_Click(object sender, EventArgs e)
		{
			Response.Redirect("LoginPage.aspx");
		}
		protected void SignUp_Click(object sender, EventArgs e)
		{
			Response.Redirect("SignUpPage.aspx");
		}
	}
}