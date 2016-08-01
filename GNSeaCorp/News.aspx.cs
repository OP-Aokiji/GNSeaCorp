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
    public partial class News : System.Web.UI.Page
    {
        public static DataTable newList = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                NewsItem newsItem = new NewsItem();
                newsItem.Crud = Constants.WS_RETRIEVE;
                newsItem.NewsId = "";

                INewsRoxy proxy = new NewsRoxy();
                newList = (DataTable)proxy.NewsCrud(newsItem);

            }
            catch (Exception ex)
            {
                Response.Redirect("Admin/404.aspx");
            }
        }
    }
}