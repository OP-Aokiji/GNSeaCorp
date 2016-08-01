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
    public partial class UcUserCU : System.Web.UI.UserControl
    {
        private string Account_Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin-Login-Status"] != null)
            {
                if (Session["Admin-Login-Status"].Equals(Constants.WR_SUCCESS))
                {
                    if (!IsPostBack)
                    {
                        ReceiveId();
                        if (Account_Id.Trim() != "")
                        {
                            try
                            {
                                AccountItem accountId = new AccountItem();
                                accountId.UserId = Account_Id;
                                accountId.Crud = Constants.RETRIEVE_ALL;

                                IAccountProxy proxy = new AccountProxy();
                                DataTable reDataTable = (DataTable)proxy.AccountCRUD(accountId);
                                txtUserId.Text = reDataTable.Rows[0][DbSchema.Account.USER_ID].ToString();
                                txtAddress.Text = reDataTable.Rows[0][DbSchema.Account.ADDRESS].ToString();
                                txtFirstName.Text = reDataTable.Rows[0][DbSchema.Account.FIRST_NAME].ToString();
                                txtLastName.Text = reDataTable.Rows[0][DbSchema.Account.LAST_NAME].ToString();
                                txtPhoneNumber.Text = reDataTable.Rows[0][DbSchema.Account.PHONE_NUMBER].ToString();
                                txtID.Text = reDataTable.Rows[0][DbSchema.Account.LAST_NAME].ToString();
                                rblGender.SelectedValue = reDataTable.Rows[0][DbSchema.Account.GENDER].ToString();
                                lblImageUrlTemp.Text =
                                        (string.IsNullOrEmpty(reDataTable.Rows[0][DbSchema.Account.AVATAR_URL].ToString()))
                                            ? "image.jpg"
                                            : reDataTable.Rows[0][DbSchema.Account.AVATAR_URL].ToString();
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

        private void ReceiveId()
        {
            if (Session["ItemId"] != null)
            {
                Account_Id = Session["ItemId"].ToString();
                Session["ItemId"] = null;
            }
        }

        protected void fuImage1_PreRender(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("imageUrl", typeof(string));
            dt.PrimaryKey = new DataColumn[] { dt.Columns["imageUrl"] };
            dt.Rows.Add(lblImageUrlTemp.Text);
            dlImage.DataSource = dt;
            dlImage.DataBind();
        }

        protected void btnUploadImage_Click(object sender, EventArgs e)
        {
            if (fuImage1.HasFile)
            {

                if (ImageUtility.CheckFileType(fuImage1.FileName))
                {
                    lblImageUrlTemp.Text = fuImage1.FileName;
                    String filePath = "~/Admin/images/" + fuImage1.FileName;
                    fuImage1.SaveAs(MapPath(filePath));
                }

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                AccountItem accountItem = new AccountItem();
                accountItem.UserId = txtUserId.Text;
                accountItem.Address = txtAddress.Text;
                accountItem.AvatarUrl = lblImageUrlTemp.Text;
                accountItem.FirstName = txtFirstName.Text;
                accountItem.Gender = rblGender.SelectedValue;
                accountItem.Identification = txtID.Text;
                accountItem.LastName = txtLastName.Text;
                accountItem.Password = Security.Encrypt(txtPassword.Text);
                accountItem.PhoneNumber = txtPhoneNumber.Text;
                accountItem.RoldId = ddlRole.SelectedValue;

                if (Session["UserId"] != null)
                    accountItem.User = Session["UserId"].ToString();
                else
                    Response.Redirect("~/Admin/Login.aspx");


                accountItem.Crud = Account_Id.Trim() == "" ? Constants.WS_INSERT : Constants.WS_UPDATE;

                IAccountProxy proxy = new AccountProxy();
                string result = (string)proxy.AccountCRUD(accountItem);

                if (result.Equals(Constants.WR_SUCCESS))
                {
                    MessageBox.Show("Save is successful", this);
                    Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCUSERR, false);
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

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCUSERR);
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserId.Text = "";
            txtAddress.Text = "";
            txtFirstName.Text = "";
            txtID.Text = "";
            txtLastName.Text = "";
            txtPhoneNumber.Text = "";
            txtPassword.Text = "";
            txtRePassword.Text = "";
            lblImageUrlTemp.Text = "";
        }
    }
}