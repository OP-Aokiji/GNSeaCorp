using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using GN.Common;
using GN.Common.DataItem;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using GNSeaCorp.cm;

namespace GNSeaCorp.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Admin-Login-Status"] = Constants.WR_ERROR;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                AccountItem accountItem = new AccountItem();
                accountItem.UserId = txtUserName.Text;
                accountItem.Password = Security.Encrypt(txtPassword.Text);
                accountItem.Crud = Constants.WS_LOGIN;

                IAccountProxy proxy = new AccountProxy();

                DataTable dataResult = (DataTable) (proxy.AccountCRUD(accountItem));

                if (dataResult != null && dataResult.Rows.Count > 0 &&
                    dataResult.Rows[0][Constants.ERR_CODE].ToString().Equals(Constants.WR_SUCCESS))
                {
                    Session["Admin-Login-Status"] = Constants.WR_SUCCESS;
                    Response.Redirect("Default.aspx");
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