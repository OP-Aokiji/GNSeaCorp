using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GN.Common;

namespace GNSeaCorp.Admin.MasterPage
{
    public partial class GNSeaAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Admin-Login-Status"] != null && Session["UserId"] != null)
                {
                    if (!Session["Admin-Login-Status"].Equals(Constants.WR_SUCCESS))
                    {

                    }
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Admin/404.aspx");
            }
        }
    }
}