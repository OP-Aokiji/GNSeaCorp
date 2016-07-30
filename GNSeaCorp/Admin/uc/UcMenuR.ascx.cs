using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GN.Common;
using GN.Common.DataItem;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using GNSeaCorp.cm;
using MenuItem = GN.Common.DataItem.MenuItem;

namespace GNSeaCorp.Admin.uc
{
    public partial class UcMenuR : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                MenuItem menuItem = new MenuItem();
                menuItem.Crud = Constants.RETRIEVE_ALL;

                IMenuProxy proxy = new MenuProxy();

                DataTable dataResult = (DataTable)(proxy.MenuCrud(menuItem));

                if (dataResult != null && dataResult.Rows.Count > 0)
                {
                    gridMenu.DataSource = dataResult;
                    gridMenu.DataBind();
                }
                else
                {
                    MessageBox.Show("Không có data  !!!", this);
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), this);
            }
        }
    }
}