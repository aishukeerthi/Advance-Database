using MongoDB.Driver;
using nevadaacademy1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace nevadaacademy1
{
    public partial class Adminview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string studentname = "";
            string subject = "";
            string grade = "";
            string comment = "";
            string semester = "";
            string year = "";

            MongoClient client = new MongoClient("mongodb://localhost:27017");
            IMongoDatabase database = client.GetDatabase("hashirama");


            string teacherid = Session["teacherid"].ToString();

            IMongoCollection<teacher> teacherdetails = database.GetCollection<teacher>("teacher");
            List<teacher> teacherlist = teacherdetails.Find(x => x.userid == teacherid).ToList();
            //  useridtb.Text = parentslist[0].contact;
            TextBox3.Text = teacherlist[0].teacher_name;
            TextBox1.Text = teacherlist[0].contact;
            TextBox2.Text = teacherlist[0].userid;
            //  emailtb.Text = parentslist[0].email;

            //get kids details
            /*string value = "<table><th>Name</th><th>Subject</th><th>Grade</th><th>Comment</th><th>Semester</th><th>Year</th>";
            List<string> studentids = (List<string>)Session["kids"];
            foreach (string studentid in studentids)
            {
                //get studentnames first

                IMongoCollection<student> students = database.GetCollection<student>("student");

                List<student> studentslist = students.Find(x => x._id == studentid).ToList();
                studentname = studentslist[0].first_name + " " + studentslist[0].middle_name + " " + studentslist[0].last_name;
                IMongoCollection<exam_result> examresults = database.GetCollection<exam_result>("student_grade");
                List<exam_result> examresultslist = examresults.Find(x => x.studentid[0] == studentid).ToList();
                foreach (exam_result result in examresultslist)
                {
                    IMongoCollection<subject> subjects = database.GetCollection<subject>("course");
                    List<subject> subjectdetails = subjects.Find(x => x.subject_id == result.subject_id).ToList();
                    subject = subjectdetails[0].name;
                    grade = result.grade;
                    comment = result.comment;
                    semester = result.semester;
                    year = result.year;
                    value += "<tr><td>" + studentname + "</td>";
                    value += "<td>" + subject + "</td>";
                    value += "<td>" + grade + "</td>";
                    value += "<td>" + comment + "</td>";
                    value += "<td>" + semester + "</td>";
                    value += "<td>" + year + "</td></tr>";
                }
            }
            value += "</table>";
            Literal4.Text = value;*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Clear();
           

          

            Response.Redirect("AddStudents.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("AddResults.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("AddParents.aspx");
        }
    }
        
    

}