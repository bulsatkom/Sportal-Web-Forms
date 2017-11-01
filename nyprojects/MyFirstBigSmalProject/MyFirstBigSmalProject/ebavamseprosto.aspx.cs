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
    public partial class ebavamseprosto : System.Web.UI.Page
    {

        [Inject]
        public IStatiiServices StatiiiServices { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Statii> ListView1_GetData()
        {
            return this.StatiiiServices.GetAllStatiiSortedById();
        }

        public void ListView1_InsertItem()
        {
            var item = new Statii();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                this.StatiiiServices.InsertStatiq(item);
            }
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void ListView1_DeleteItem(int id)
        {

        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void ListView1_UpdateItem(int id)
        {
            Statii item = null;
            // Load the item here, e.g. item = MyDataLayer.Find(id);
            item = this.StatiiiServices.GetById(id);
            if (item == null)
            {
                // The item wasn't found
                ModelState.AddModelError("", String.Format("Item with id {0} was not found", id));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                this.StatiiiServices.UpdateStatii(item);

            }
        }
    }
}