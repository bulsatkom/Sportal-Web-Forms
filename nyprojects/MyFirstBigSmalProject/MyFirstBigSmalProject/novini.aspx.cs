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
    public partial class novini : System.Web.UI.Page
    {
        [Inject]
        public IStatiiServices statiiservices { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<MyFirstBigSmallProject.Data.Statii> ListView1_GetData()
        {
            return this.statiiservices.GetAllStatiiSortedById();
        }
    }
}