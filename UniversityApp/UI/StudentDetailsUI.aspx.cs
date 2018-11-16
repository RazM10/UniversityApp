using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UniversityApp.BLL;

namespace UniversityApp.UI
{
    public partial class StudentDetailsUI : System.Web.UI.Page
    {
        public StudentManager aStudentManager=new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            studetGridView.DataSource = aStudentManager.GetAllStudents();
            studetGridView.DataBind();
            
        }

        protected void LinkButton_click_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton=sender as LinkButton;
            DataControlFieldCell cell=linkButton.Parent as DataControlFieldCell;
            GridViewRow row=cell.Parent as GridViewRow;
            HiddenField hiddenField = row.FindControl("HiddenFieldId") as HiddenField;
            Response.Write(hiddenField.Value);
        }

        protected void LinkButton_click_OnClick1(object sender, EventArgs e)
        {
            LinkButton linkButton = sender as LinkButton;
            DataControlFieldCell cell = linkButton.Parent as DataControlFieldCell;
            GridViewRow row = cell.Parent as GridViewRow;
            HiddenField hiddenField = row.FindControl("HiddenFieldId") as HiddenField;
            int id = Convert.ToInt32(hiddenField.Value);
            Response.Write(id);
            aStudentManager.DeleteById(id);

            studetGridView.DataSource = aStudentManager.GetAllStudents();
            studetGridView.DataBind();
        }
    }
}