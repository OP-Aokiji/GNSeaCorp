<<<<<<< HEAD
﻿using System;
=======
﻿using GN.Common;
using GN.Common.DataItem;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using System;
>>>>>>> 3599e44e034c672f6cefa36b92b42134ed419aa6
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
<<<<<<< HEAD
using System.Web.UI.WebControls;
using GN.Common;
using GN.Common.DataItem;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using GNSeaCorp.cm;
using MenuItem = GN.Common.DataItem.MenuItem;
=======
>>>>>>> 3599e44e034c672f6cefa36b92b42134ed419aa6

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
<<<<<<< HEAD

                DataTable dataResult = (DataTable)(proxy.MenuCrud(menuItem));

                if (dataResult != null && dataResult.Rows.Count > 0)
                {
                    gridMenu.DataSource = dataResult;
                    gridMenu.DataBind();
                }
                else
                {
                    MessageBox.Show("Không có data  !!!", this);
=======
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
>>>>>>> 3599e44e034c672f6cefa36b92b42134ed419aa6
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), this);
            }
        }
    }
}