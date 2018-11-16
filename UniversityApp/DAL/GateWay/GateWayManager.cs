using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using UniversityApp.DAL.Model;

namespace UniversityApp.DAL.GateWay
{
    public class GateWayManager
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["studentDB"].ConnectionString;
        private string query;
        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;


        public GateWayManager()
        {
            connection=new SqlConnection(connectionString);
        }
        public int Save(Student aStudent)
        {
            //string connectionString = @"Data Source=(local);Initial Catalog=University20;Integrated Security=True";
            //SqlConnection connection = new SqlConnection(connectionString);

            
            query = "INSERT INTO Students(RegNo,Name,Email,Address,Department) VALUES(@regNo, @name, @email, @address, @department)";
            command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@regNo", aStudent.RegNo);
            command.Parameters.AddWithValue("@name", aStudent.Name);
            command.Parameters.AddWithValue("@email", aStudent.Email);
            command.Parameters.AddWithValue("@address", aStudent.Address);
            command.Parameters.AddWithValue("@department", aStudent.Department);

            connection.Open();
            int rowEffect = command.ExecuteNonQuery();
            connection.Close();

            return rowEffect;
        }

        public List<Student> GetAllStudentrs()
        {
            query = "SELECT *FROM Students";
            command=new SqlCommand(query,connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<Student> studentList =new List<Student>();
            while (reader.Read())
            {
                Student aStudent = new Student();
                aStudent.Id = Convert.ToInt32(reader["Id"]);
                aStudent.RegNo = reader["RegNo"].ToString();
                aStudent.Name = reader["Name"].ToString();
                aStudent.Email = reader["Email"].ToString();
                aStudent.Address = reader["Address"].ToString();
                aStudent.Department = reader["Department"].ToString();

                studentList.Add(aStudent);
            }
            reader.Close();
            connection.Close();
            return studentList;
        }

        public void DeleteById(int id)
        {
            query = "DELETE FROM Students WHERE Id=@id";
            command=new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@id", id);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
    }
}