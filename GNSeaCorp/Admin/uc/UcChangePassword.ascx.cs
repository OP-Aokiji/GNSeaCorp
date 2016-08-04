using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GN.Common;
using GN.Common.DataItem;
using GN.Common.Schema;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using GNSeaCorp.cm;

namespace GNSeaCorp.Admin.uc
{
    public partial class UcChangePassword : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin-Login-Status"] != null)
            {
                if (!Session["Admin-Login-Status"].Equals(Constants.WR_SUCCESS))
                    Response.Redirect("~/Admin/Login.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                AccountItem accountItem = new AccountItem();
                accountItem.UserId = Session["UserId"].ToString();
                accountItem.Password = Security.Encrypt(txtOldPassword.Text);
                string newPassword = Security.Encrypt(txtNewPassword.Text);

                IAccountProxy proxy = new AccountProxy();
                DataTable resulTable =  proxy.AccountChangePassword(accountItem, newPassword);
                if (resulTable == null || resulTable.Rows.Count <= 0)
                {
                    MessageBox.Show("Tên đăng nhập hoặc mật khẩu không chính xác !!!", this);
                }
                else if (resulTable.Rows[0]["ERR_CODE"].ToString().Equals(Constants.WR_SUCCESS))
                    MessageBox.Show("Mật khẩu đã được thay đổi !!!", this);
                else MessageBox.Show("Lỗi xẩy ra trong quá trình đổi mật khẩu !!!", this);
            }
            catch (Exception ex)
            {
                Response.Redirect(Constants.Page404);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCSLIDELIST, false);
        }
    }
}