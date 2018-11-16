using System;
using UniversityApp.BLL;
using UniversityApp.DAL.Model;

namespace UniversityApp.UI
{
    public partial class StudentEntryUI : System.Web.UI.Page
    {
        private StudentManager aStudentManager=new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Student aStudent=new Student();
            aStudent.RegNo = regNoTextBox.Text;
            aStudent.Name = nameTextBox.Text;
            aStudent.Email = emailTextBox.Text;
            aStudent.Address = addressTextBox.Text;
            aStudent.Department = depertmentTextBox.Text;

            string aString=aStudentManager.Save(aStudent);
            if (aString == "Save Successful")
            {
                outputLabel.Text = aString;
                regNoTextBox.Text = "";
                nameTextBox.Text = "";
                emailTextBox.Text = String.Empty;
                addressTextBox.Text = String.Empty;
                depertmentTextBox.Text = String.Empty;

            }
            else
            {
                outputLabel.Text = aString;
            }

            

        }

    }
}