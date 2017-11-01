using Microsoft.AspNet.Identity;
using MyFirstBigSmallProject.Data;
using MyFirstBigSmallProject.Services;
using Ninject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstBigSmalProject
{
    public partial class noviniview : System.Web.UI.Page
    {
        [Inject]
        public IStatiiServices StatiiServices { get; set; }

        [Inject]
        public IKomentariServices KomentariServices { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public Statii FormView1_GetItem([QueryString]string id)
        {
            return this.StatiiServices.GetById(int.Parse(id));
        }

        protected void Unnamed_Load(object sender, EventArgs e)
        {
           
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/account/login");
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Komentari> ListView1_GetData([QueryString]string id)
        {
            return this.KomentariServices.GetAllCommentsByStatiiID(int.Parse(Request.QueryString["id"]));
        }

        protected void public_Click(object sender, EventArgs e)
        {
            string user = Context.User.Identity.GetUserName();
            string message = ((TextBox)Login1.FindControl("UserName")).Text;
            int id = int.Parse(Request.QueryString["id"]);
            this.KomentariServices.AddCommentFromStatii(user, message, id);
            ((TextBox)Login1.FindControl("UserName")).Text = "";
            ListView1_GetData(Request.QueryString["id"]);
        }
    }
}