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
    public partial class _Default : Page
    {
        [Inject]
        public  IStatiiServices StatiiServices { get; set; }

        [Inject]
        public IMachoveServices MachoveServices { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Statii> ListView1_GetData()
        {
            return this.StatiiServices.GetTop4();
        }
        
        public IQueryable<Machove> ListView2_GetData()
        {
            return this.MachoveServices.GetLatestTop10Results();
        }

        public IQueryable<Statii> ListView3_GetData()
        {
            return this.StatiiServices.GetFirst3();
        }

        public IQueryable<Statii> ListView4_GetData()
        {
            return this.StatiiServices.GetSecond3();
        }
    }
}