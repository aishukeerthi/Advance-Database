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
    public partial class deleteprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            string parentid = Session["parentid"].ToString();
            MongoClient client = new MongoClient("mongodb://localhost:27017");
            IMongoDatabase database = client.GetDatabase("hashirama");
            IMongoCollection<parent> parentdetails = database.GetCollection<parent>("parent");
            List<parent> parentslist = parentdetails.Find(x => x.parent_id == parentid).ToList();
            parentdetails.DeleteOne(x => x.parent_id == parentid);
            Response.Redirect("Login.aspx");
        }
    }
}