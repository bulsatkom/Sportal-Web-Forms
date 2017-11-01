using Microsoft.AspNet.Identity;
using MyFirstBigSmallProject.Data;
using MyFirstBigSmallProject.Services;
using Ninject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstBigSmalProject
{
    public partial class bayern : System.Web.UI.Page
    {
        [Inject]
        public IKomentariForTeamServices KomentariServices { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/account/login");
        }

        protected void public_Click(object sender, EventArgs e)
        {
            string user = Context.User.Identity.GetUserName();
            string message = ((TextBox)Login1.FindControl("UserName")).Text;
            this.KomentariServices.AddCommentForTeam(user, message, "bayern");
            ((TextBox)Login1.FindControl("UserName")).Text = "";
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<KomentariForTeams> ListView1_GetData1()
        {
            return this.KomentariServices.GetAllCommentsForTeam("bayern");
        }
    }
}