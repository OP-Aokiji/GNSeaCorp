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

namespace GNSeaCorp
{
    public partial class index : System.Web.UI.Page
    {
        public static DataTable productList = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ProductItem productItem = new ProductItem();
                productItem.Crud = Constants.WS_RETRIEVE;

                IProductProxy proxy = new ProductProxy();
                productList = (DataTable) proxy.ProductCRUD(productItem);
            }
            catch (Exception ex)
            {
                Response.Redirect("Admin/404.aspx");
            }
        }
    }
}