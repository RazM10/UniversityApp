using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using UniversityApp.DAL.GateWay;
using UniversityApp.DAL.Model;

namespace UniversityApp.BLL
{
    public class StudentManager
    {
        private GateWayManager aGateWay=new GateWayManager();

        public string Save(Student aStudent)
        {
            string aString;
            int rowEffect = aGateWay.Save(aStudent);
            if (rowEffect > 0)
            {
                 aString = "Save Successful";
            }
            else
            {
                aString = "Fail";
            }
            return aString;
        }

        public List<Student> GetAllStudents()
        {
            return aGateWay.GetAllStudentrs();
        }

        public void DeleteById(int id)
        {
            aGateWay.DeleteById(id);
        }
    }
}