using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GN.Common;
using GNSeaCorp.cm;

namespace GNSeaCorp.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        private void LoadUserControl(PlaceHolder placeHolder, string usercontrolName)
        {
            try
            {
                placeHolder.Controls.Add(LoadControl(String.Format(Constants.USER_CONTROL_DIR, usercontrolName)));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), this);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string[] arrUserControl = new string[] {
                                                         "UcSlideCU",
                                                         "UcSlideList",
                                                         "UcProductCU",
                                                         "UcProductList",
                                                         "UcMenuCU",
                                                         "UcMenuR",
                                                         "UcNewsCU",
                                                         "UcNewsR",
                                                         "UcUserR",
                                                         "UcUserCU",
                                                         "UcRoleR",
                                                         "UcRoleCU",
                                                         "UcChangePassword"
                                                      };
                string usercontrolName = Request["ctr"];
                if (string.IsNullOrEmpty(usercontrolName))
                    Response.Redirect("Login.aspx");
                if (arrUserControl.Contains(usercontrolName))
                    LoadUserControl(placeHolderMain, usercontrolName);
                else
                    Response.Redirect("404.aspx");
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message.ToString(), this);
            }
        }
    }
}