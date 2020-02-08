using ElearningPortal;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace ELearningPortal
{
	public partial class GridViewELearn : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				DisplayCourse();
			}

			
		}
		protected void DisplayCourse()
		{
			UserRespositary userRespositary = new UserRespositary();
			DataTable data = userRespositary.ViewCourse();
			Grid.DataSource = data;
			Grid.DataBind();
		}
		protected void Grid_DeleteRow(object sender, GridViewDeleteEventArgs e)
		{
			UserRespositary userRespositary = new UserRespositary();
			int courseId = Convert.ToInt32(Grid.DataKeys[e.RowIndex].Value.ToString());
			userRespositary.DeleteDetail(courseId);
			DisplayCourse();
		}
		protected void Grid_EditRow(object sender, GridViewEditEventArgs e)
		{
			Grid.EditIndex = e.NewEditIndex;
		}

		protected void Grid_UpdateRow(object sender, GridViewUpdateEventArgs e)
		{
			UserRespositary userRespositary = new UserRespositary();
			int courseId = Convert.ToInt32(Grid.DataKeys[e.RowIndex].Value.ToString());
			TextBox course = Grid.Rows[e.RowIndex].FindControl("txtCourse") as TextBox;
			TextBox courseContent = Grid.Rows[e.RowIndex].FindControl("txtcourseContent") as TextBox;
			TextBox lectures = Grid.Rows[e.RowIndex].FindControl("txtLectures") as TextBox;
			TextBox sessionTime = Grid.Rows[e.RowIndex].FindControl("txtsessionTime") as TextBox;
			CourseDetail courseDetail = new CourseDetail(course.Text, courseContent.Text, lectures.Text, sessionTime.Text);
			userRespositary.UpdateDetail(courseId, courseDetail);
			DisplayCourse();
		}

		protected void Grid_CancelRowEdit(object sender, GridViewCancelEditEventArgs e)
		{
			Grid.EditIndex = -1;
			DisplayCourse();
		}
	}
}