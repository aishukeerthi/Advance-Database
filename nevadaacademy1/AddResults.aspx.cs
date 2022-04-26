using MongoDB.Driver;
using nevadaacademy1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nevadaacademy1
{
    public partial class AddResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if(!IsPostBack)
            {
                MongoClient client = new MongoClient("mongodb://localhost:27017");
                IMongoDatabase database = client.GetDatabase("hashirama");
                IMongoCollection<student> students = database.GetCollection<student>("student");
                List<student> studentslist = students.Find(x => true).ToList();
                foreach(student studentt in studentslist)
                {
                    var item = new ListItem
                    {
                        Text = studentt.student_id,
                           Value = studentt._id
                    };
                    studentslists.Items.Add(item);
                }

                //get subjects
                IMongoCollection<subject> subjects = database.GetCollection<subject>("course");
                List<subject> subjectslist = subjects.Find(x => true).ToList();
                foreach (subject subj in subjectslist)
                {
                    var item = new ListItem
                    {
                        Text = subj.name,
                        Value = subj.subject_id
                    };
                    DropDownList1.Items.Add(item);
                }
                //end

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MongoClient client = new MongoClient("mongodb://localhost:27017");
            IMongoDatabase database = client.GetDatabase("hashirama");
            IMongoCollection<exam_result> examresults = database.GetCollection<exam_result>("student_grade");

            //code for adding a new result
            exam_result obj = new exam_result();            
            obj.exam_id = Exam_id.Text;
            obj.grade = Grade.Text;
            obj.subject_id = DropDownList1.SelectedValue;
            obj.comment = Comments.Text;
            obj.semester = Semester.Text;
            obj.year = Year.Text;
            obj.studentid = new List<string>();
            obj.studentid.Add(studentslists.SelectedValue);
            examresults.InsertOne(obj);
            Label1.Text = "Data addedd sucessfully";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Adminview.aspx");
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}