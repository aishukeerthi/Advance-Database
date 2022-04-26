using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nevadaacademy1.Models;
using MongoDB.Bson;

namespace nevadaacademy1
{
    public partial class ViewResults : System.Web.UI.Page
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
            string value1 = "<table><th>Parent Details</th>";

            //get parent details
            string parentid = Session["parentid"].ToString();
            IMongoCollection<parent> parentdetails = database.GetCollection<parent>("parent");
            List<parent> parentslist = parentdetails.Find(x => x.parent_id == parentid).ToList();
            value1 += "<tr><td>First Name : " + parentslist[0].first_name+"</td>";
            value1 += "<td>Last Name : " + parentslist[0].last_name + "</td>";
            value1 += "<td>Email : " + parentslist[0].email + "</td></tr></table>";
            Literal2.Text = value1;

            //get kids details
            string value = "<table><th>Name</th><th>Subject</th><th>Grade</th><th>Comment</th><th>Semester</th><th>Year</th>";
            List<string> studentids=(List<string>)Session["kids"];
            foreach(string studentid in studentids)
            {
                //get studentnames first
                
                IMongoCollection<student> students = database.GetCollection<student>("student");

                var studentslist = students.Find(x => true).ToList();
                //  List<student> studentslist= students.Find(x => x._id == studentid).ToList();
                student student = studentslist.ToList().Find(x => x._id == studentid);


                //List<student> filteredList = studentslist.Find(x => x._id == studentid).ToList();
                studentname = student.first_name + " " + student.middle_name + " " + student.last_name;
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
            Literal1.Text = value;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }

        
    }
}