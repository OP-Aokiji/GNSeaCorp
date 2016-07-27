using GN.Common;
using GN.Common.DataItem;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;

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

                if (dataResult != null && dataResult.Rows.Count > 0 &&
                    dataResult.Rows[0][Constants.ERR_CODE].ToString().Equals(Constants.WR_SUCCESS))
                {
                    Session["Admin-Login-Status"] = Constants.WR_SUCCESS;
                    Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + "UcSlideCU");
                }
                else
                {
                    Session["admin-login-status"] = Constants.WR_ERROR;
                    MessageBox.Show("Tên đăng nhập hoặc mật khẩu không chính xác  !!!", this);
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), this);
            }
        }
    }
}