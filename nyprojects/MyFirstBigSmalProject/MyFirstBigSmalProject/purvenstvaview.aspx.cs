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
    public partial class purvenstvaview : System.Web.UI.Page
    {
        [Inject]
        public IPurvenstvaServices PurvenstvaServices { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Purvenstva> ListView1_GetData()
        {
            return this.PurvenstvaServices.GetAllTeamsById(Request.QueryString["id"]);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(this.DropDownList1.Text == "Класиране")
            {
                this.ListView1.Visible = true;
                this.golmaistori.Visible = false;
            }
            else
            {
                this.ListView1.Visible = false;
                this.golmaistori.Visible = true;
            }
        }
    }
}