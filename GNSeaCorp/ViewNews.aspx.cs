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
    public partial class ViewNews : System.Web.UI.Page
    {
        public static DataTable viewContent = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString.AllKeys.Contains("Id"))
                {
                    NewsItem newsItem = new NewsItem();
                    newsItem.Crud = Constants.WS_RETRIEVE;
                    newsItem.NewsId = Request["Id"];

                    INewsRoxy newProxy = new NewsRoxy();
                    viewContent = (DataTable) newProxy.NewsCrud(newsItem);
                }
                else
                {
                    Response.Redirect("New");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Admin/404.aspx");
            }
        }
    }
}