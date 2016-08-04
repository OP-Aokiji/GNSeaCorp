using System;
﻿using GN.Common;
using GN.Common.DataItem;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
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
            MenuItem menuItem = new MenuItem();
            menuItem.Crud = Constants.WS_RETRIEVE;
            menuItem.MenuId = "";

            IMenuProxy proxy = new MenuProxy();

            DataTable dataResult = (DataTable)(proxy.MenuCrud(menuItem));

            gridMenu.DataSource = dataResult;
            gridMenu.DataBind();
        }

        protected void gridMenu_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Session["ItemId"] = ((Label)gridMenu.Rows[e.NewEditIndex].FindControl("lblMenuId")).Text;
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCMENUCU);
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            Session["ItemId"] = null;
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCMENUCU);
        }

        protected void gridMenu_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                MenuItem menuItem = new MenuItem();
                menuItem.MenuId = ((Label)gridMenu.Rows[e.RowIndex].FindControl("lblMenuId")).Text;
                menuItem.Crud = Constants.WS_DELETE;
                if (Session["UserId"] != null)
                    menuItem.User = Session["UserId"].ToString();

                IMenuProxy proxy = new MenuProxy();
                string resut = (string)proxy.MenuCrud(menuItem);

                if (resut.Equals(Constants.WR_SUCCESS))
                {
                    MessageBox.Show("Delete success", this);
                    BindData();
                }
                else
                    MessageBox.Show("Delete fail", this);
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Admin/404.aspx");
            }
        }
    }
}