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
    public partial class machove : System.Web.UI.Page
    {
        [Inject]
        public IMachoveServices MachoveServices { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string text = this.DropDownList1.Text;
            if(text == "днес")
            {
                this.dnes.Visible = true;
                this.utre.Visible = false;
            }
            else
            {
                this.dnes.Visible = false;
                this.utre.Visible = true;
            }            
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Machove> ListView1_GetData()
        {
            return this.MachoveServices.GetAllMachesForToday();
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Machove> ListView2_GetData()
        {
            return this.MachoveServices.GetAllMachesForTomorrow();
        }
    }
}