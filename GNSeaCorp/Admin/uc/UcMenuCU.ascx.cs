using GN.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GN.Common.Schema;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using MenuItem = GN.Common.DataItem.MenuItem;
using GNSeaCorp.cm;

namespace GNSeaCorp.Admin.uc
{
    public partial class UcMenuCU : System.Web.UI.UserControl
    {
        private string Menu_Id = "";

        private void ReceiveId()
        {
            if(Session["ItemId"] != null)
            {
                Menu_Id = Session["ItemId"].ToString();
                Session["ItemId"] = null;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin-Login-Status"] != null)
            {
                if (Session["Admin-Login-Status"].Equals(Constants.WR_SUCCESS))
                {
                    if (!IsPostBack)
                    {
                        ReceiveId();

                        if (Menu_Id.Trim() != "")
                        {
                            try
                            {
                                MenuItem menuItem = new MenuItem();
                                menuItem.MenuId = Menu_Id;
                                menuItem.Crud = Constants.RETRIEVE_ALL;

                                IMenuProxy proxy = new MenuProxy();
                                DataTable resulTable = (DataTable)proxy.MenuCrud(menuItem);
                                txtMenu_Cd.Text = resulTable.Rows[0][DbSchema.Menu.MENU_ID].ToString();
                                txtMenu_Cd.Enabled = false;
                                txtMenu_Name.Text = resulTable.Rows[0][DbSchema.Menu.MENU_NAME].ToString();
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message, this);
                            }
                                
                        }
                    }
                }
                else
                {
                    Response.Redirect("~/Admin/Login.aspx");
                }

            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ClearItem();
        }

        private void ClearItem()
        {
            txtMenu_Cd.Text = "";
            txtMenu_Name.Text = "";
            txtMenu_Cd.Focus();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCMENUR); ;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                MenuItem menuItem = new MenuItem();
                menuItem.MenuId = txtMenu_Cd.Text;
                menuItem.MenuName = txtMenu_Name.Text;

                if (Session["UserId"] != null)
                    menuItem.User = Session["UserId"].ToString();
                else
                    Response.Redirect("~/Admin/Login.aspx");
                

                if (Menu_Id.Trim() == "")
                    menuItem.Crud = Constants.WS_INSERT;
                else
                {
                    menuItem.Crud = Constants.WS_UPDATE;
                }

                IMenuProxy proxy = new MenuProxy();
                string result = (string)proxy.MenuCrud(menuItem);

                if (result.Equals(Constants.WR_SUCCESS))
                {
                    MessageBox.Show("Save is successful", this);
                    Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCMENUR, false);
                }
                else
                {
                    MessageBox.Show("Fail", this);
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Admin/" + Constants.Page404);
            }
        }
    }
}