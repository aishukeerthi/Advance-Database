using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nevadaacademy1.Models;
namespace nevadaacademy1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            errorlabel.Text = "";


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MongoClient client = new MongoClient("mongodb://localhost:27017");
            IMongoDatabase database = client.GetDatabase("hashirama");
            IMongoCollection<parent> parents = database.GetCollection<parent>("parent");
            List<parent> parentslist = parents.Find(x => true).ToList();
            string usrname = username.Text;
            string pwd = password.Text;
            bool userfound = false;
            foreach (parent parentt in parentslist)
            {
                if (parentt.parent_id == usrname && parentt.password == pwd)
                {
                    Response.Write("<script language=javascript>alert('Hello');</script>");
                    userfound = true;
                    Session["kids"] = parentt.kids;
                    Session["parentid"] = parentt.parent_id;
                    Response.Redirect("ViewResults.aspx");
                 
                }
            }
            if (userfound == false)
            {
                errorlabel.Visible = true;
                errorlabel.Text = "Either username or password is incorrect";
            }

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            bool userfound = false;
            MongoClient client = new MongoClient("mongodb://localhost:27017");
            IMongoDatabase database = client.GetDatabase("hashirama");
            IMongoCollection<teacher> admin = database.GetCollection<teacher>("teacher");
            List<teacher> adminlist = admin.Find(x => true).ToList();
            foreach (teacher adminn in adminlist)
            {
                if (adminn.userid == username.Text && adminn.password == password.Text)
                {
                    userfound = true;
                    Session["teacherid"] = adminn.userid;
                    Response.Redirect("Adminview.aspx");
                }
            }
           
            if (userfound == false)
            {
                errorlabel.Visible = true;
                errorlabel.Text = "Either username or password is incorrect";
            }
        }
    }

}