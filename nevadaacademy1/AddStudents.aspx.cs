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
    public partial class AddStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (!IsPostBack)
            {
                MongoClient client = new MongoClient("mongodb://localhost:27017");
                IMongoDatabase database = client.GetDatabase("hashirama");
                IMongoCollection<parent> parents = database.GetCollection<parent>("parent");
                List<parent> parentslist = parents.Find(x => true).ToList();
                foreach (parent parentt in parentslist)
                {
                    var item = new ListItem
                    {
                        Text = parentt.parent_id,
                        Value = parentt._id
                    };
                    Parentslists.Items.Add(item);
                }

                //Label1.Text = Parentslists.SelectedItem.Text.ToString();
            }
            ParentDetails();
        }
        public void ParentDetails()
        {
            if (!IsPostBack)
            {
                MongoClient client = new MongoClient("mongodb://localhost:27017");
                IMongoDatabase database = client.GetDatabase("hashirama");
                string ParentFN = "";
                string ParentMN = "";
                string ParentLN = "";
                string Parentemail = "";
                //Label1.Text = Parentslists.SelectedItem.Text.ToString();
                String parentid2 = Parentslists.SelectedItem.Text.ToString();
                IMongoCollection<parent> parentdetails = database.GetCollection<parent>("parent");

                if (Parentslists.SelectedValue != null)
                    parentid2 = Parentslists.SelectedValue;
                List<parent> parentslist2 = parentdetails.Find(x => x._id == parentid2).ToList();
                ParentFN = parentslist2[0].first_name;
                ParentMN = parentslist2[0].middle_name;
                ParentLN = parentslist2[0].last_name;
                Parentemail = parentslist2[0].email;
                PFN.Text = ParentFN;
                PMN.Text = ParentMN;
                PLN.Text = ParentLN;
                Pemail.Text = Parentemail;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            MongoClient client = new MongoClient("mongodb://localhost:27017");
            IMongoDatabase database = client.GetDatabase("hashirama");
            IMongoCollection<student> allstudents = database.GetCollection<student>("student");
            IMongoCollection<parent> parentdetails = database.GetCollection<parent>("parent");
            //code for adding a new student
            student obj = new student();

            obj.student_id = StudentID.Text;
            Console.WriteLine(obj.student_id);
            //Console.WriteLine(obj.student_id);
            obj.first_name = StudentFName.Text;
            obj.middle_name = StudentMName.Text;
            obj.last_name = StudentLName.Text;
            obj.dob = StudentDOB.Text;
            obj.gender = StudentGender.Text;
            //   Cons(obj._id);

            allstudents.InsertOne(obj);

            List<parent> parent = parentdetails.Find(x => x._id == Parentslists.SelectedValue).ToList();

            string id = parent[0]._id.ToString();
            /*var filter = Builders<BsonDocument>.Filter.Eq("_Id", id);

            var update = Builders<BsonDocument>.Update.Set("Created", DateTime.UtcNow);
            foreach (BsonElement item in document)
            {
                update = update.Set(item.Name, item.Value);
            }
            var result = collection.UpdateOne(filter, update);*/

            foreach (parent parentt in parent)
            {
                String studnet = obj._id.ToString();
                List<string> stList = new List<string>();
                if(parentt.kids != null)
                {
                    stList = parentt.kids;
                }
                stList.Add(studnet);
               
                var filter = Builders<parent>.Filter.Eq("_id", id);
                var update = Builders<parent>.Update.Set("kids", stList);
                var options = new UpdateOptions { IsUpsert = true };
                parentdetails.UpdateOne(filter, update, options ) ;
                //obj1.kids = new List<string>() {_id.Text }; //add when student created

                Label1.Text = "Details Added Succesfully";

            }
        }   
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminview.aspx");
            Label1.Text = "No changes are saved";
        }


        protected void Parentslists_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string ParentFN = "";
            string ParentMN = "";
            string ParentLN = "";
            string Parentemail = "";
            MongoClient client = new MongoClient("mongodb://localhost:27017");
            IMongoDatabase database = client.GetDatabase("hashirama");
            IMongoCollection<student> allstudents = database.GetCollection<student>("student");
            IMongoCollection<parent> parentdetails = database.GetCollection<parent>("parent");
            List<parent> parentslist2 = parentdetails.Find(x => x._id == Parentslists.SelectedValue).ToList();
            ParentFN = parentslist2[0].first_name;
            ParentMN = parentslist2[0].middle_name;
            ParentLN = parentslist2[0].last_name;
            Parentemail = parentslist2[0].email;
            PFN.Text = ParentFN;
            PMN.Text = ParentMN;
            PLN.Text = ParentLN;
            Pemail.Text = Parentemail;
        }
    }
}