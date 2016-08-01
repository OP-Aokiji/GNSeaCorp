using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using GN.Common;
using GN.Common.DataItem;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using GNSeaCorp.cm;
using MenuItem = System.Web.UI.WebControls.MenuItem;
using System.Data;

namespace GNSeaCorp.Admin.uc
{
    public partial class UcUserR : System.Web.UI.UserControl
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
            AccountItem accountItem = new AccountItem();
            accountItem.Crud = Constants.RETRIEVE_ALL;
            accountItem.UserId = "";

            IAccountProxy proxy = new AccountProxy();

            DataTable dataResult = (DataTable)(proxy.AccountCRUD(accountItem));

            gridAccount.DataSource = dataResult;
            gridAccount.DataBind();
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            Session["ItemId"] = null;
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCUSERCU);
        }

        protected void gridNews_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Session["ItemId"] = gridAccount.Rows[e.NewEditIndex].Cells[0].Text;
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCUSERCU);
        }

        protected void gridNews_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            try
            {
                AccountItem accountItem = new AccountItem();
                accountItem.UserId = gridAccount.Rows[e.RowIndex].Cells[0].Text;
                accountItem.Crud = Constants.WS_DELETE;

                if (Session["UserId"] != null)
                    accountItem.User = Session["UserId"].ToString();

                IAccountProxy proxy = new AccountProxy();
                string resut = (string)proxy.AccountCRUD(accountItem);

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