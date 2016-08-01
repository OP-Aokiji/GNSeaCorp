using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GNSeaCorp
{
    public partial class News : System.Web.UI.Page
    {
        public static DataTable newList = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            }
            catch (Exception ex)
            {
                Response.Redirect("Admin/404.aspx");
            }
        }
    }
}