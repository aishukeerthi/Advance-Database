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
    public partial class AddParents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { Label1.Text = ""; }
            protected void Button1_Click1(object sender, EventArgs e)
            {
                parent obj = new parent();
            obj.parent_id = UserID.Text;
            obj.first_name = PFN.Text;
            obj.middle_name = PMN.Text;
            obj.last_name = PLN.Text;
            obj.email = Pemail.Text;
            obj.password = password.Text;
            obj.dob = DOB.Text;
            obj.kids = null;
            MongoClient client = new MongoClient("mongodb://localhost:27017");
            IMongoDatabase database = client.GetDatabase("hashirama");
            IMongoCollection<parent> parentdetails = database.GetCollection<parent>("parent");
               

            parentdetails.InsertOne(obj);
            Label1.Text = "Parent created succesfully";

        }

        
    }
}