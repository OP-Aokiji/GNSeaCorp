using GN.Common;
using GNSeaCorp.cm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GN.Common.DataItem;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using MenuItem = System.Web.UI.WebControls.MenuItem;
using System.Data;

namespace GNSeaCorp.Admin.uc
{
    public partial class UcNewsR : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Admin-Login-Status"] != null)
                {
                    if (!Session["Admin-Login-Status"].Equals(Constants.WR_SUCCESS))
                        Response.Redirect("~/Admin/Login.aspx");
                    else
                    {
                        BindData();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, this);
            }
        }

        private void BindData()
        {
            NewsItem newsItem = new NewsItem();
            newsItem.Crud = Constants.WS_RETRIEVE;
            newsItem.NewsId = "";

            INewsRoxy proxy = new NewsRoxy();

            DataTable dataResult = (DataTable)(proxy.NewsCrud(newsItem));

            gridNews.DataSource = dataResult;
            gridNews.DataBind();
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            Session["ItemId"] = null;
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCNEWSCU);
        }

        protected void gridNews_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Session["ItemId"] = gridNews.Rows[e.NewEditIndex].Cells[0].Text;
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCNEWSCU);
        }

        protected void gridNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                NewsItem newsItem = new NewsItem();
                newsItem.NewsId = gridNews.Rows[e.RowIndex].Cells[0].Text;
                newsItem.Crud = Constants.WS_DELETE;
                if (Session["UserId"] != null)
                    newsItem.User = Session["UserId"].ToString();

                INewsRoxy proxy = new NewsRoxy();
                string resut = (string)proxy.NewsCrud(newsItem);

                if (resut.Equals(Constants.WR_SUCCESS))
                {
                    MessageBox.Show("Delete success", this);
                    BindData();
                }
                else
                    MessageBox.Show("Delete fail", this);
            }
            catch (Exception)
            {
                Response.Redirect("~/Admin/404.aspx");
            }
        }
    }
}