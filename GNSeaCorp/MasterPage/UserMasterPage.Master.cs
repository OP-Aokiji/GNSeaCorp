using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GN.Common;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using MenuItem = GN.Common.DataItem.MenuItem;

namespace GNSeaCorp.MasterPage
{
    public partial class UserMasterPage : System.Web.UI.MasterPage
    {
        public static DataTable subMenuList = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                MenuItem item = new MenuItem();
                item.Crud = Constants.WS_RETRIEVE;
                IMenuProxy proxy = new MenuProxy();
                subMenuList = (DataTable)proxy.MenuCrud(item);
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Admin/404.aspx");
            }
        }
    }
}