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
    public partial class editprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string parentid = Session["parentid"].ToString();
                MongoClient client = new MongoClient("mongodb://localhost:27017");
                IMongoDatabase database = client.GetDatabase("hashirama");
                IMongoCollection<parent> parentdetails = database.GetCollection<parent>("parent");
                List<parent> parentslist = parentdetails.Find(x => x.parent_id == parentid).ToList();
                useridtb.Text = parentslist[0].parent_id;
                fnametb.Text = parentslist[0].first_name;
                lnametb.Text = parentslist[0].last_name;
                mnametb.Text = parentslist[0].middle_name;
                emailtb.Text = parentslist[0].email;
            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            string parentid = Session["parentid"].ToString();
            MongoClient client = new MongoClient("mongodb://localhost:27017");
            IMongoDatabase database = client.GetDatabase("hashirama");
            IMongoCollection<parent> parentdetails = database.GetCollection<parent>("parent");
            List<parent> parentslist = parentdetails.Find(x => x.parent_id == parentid).ToList();
            parent newobj = new parent();
            newobj._id = parentslist[0]._id;
            newobj.parent_id = useridtb.Text;
            newobj.first_name = fnametb.Text;
            newobj.middle_name = mnametb.Text;
            newobj.last_name = lnametb.Text;
            newobj.email = emailtb.Text;
            newobj.password = parentslist[0].password;
            newobj.dob = parentslist[0].dob;
            newobj.kids = parentslist[0].kids;
            parentdetails.ReplaceOne(x => x.parent_id == parentid, newobj);
            Label1.Text = "Updated Succesfully";
        }
    }
}