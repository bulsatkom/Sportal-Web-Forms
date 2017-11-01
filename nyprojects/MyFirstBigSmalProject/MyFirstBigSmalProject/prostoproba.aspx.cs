using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstBigSmalProject
{
    public partial class prostoproba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string text = string.Format("{0:dd/MM/yyyy}", DateTime.UtcNow);
            Response.Write(text);
        }
    }
}