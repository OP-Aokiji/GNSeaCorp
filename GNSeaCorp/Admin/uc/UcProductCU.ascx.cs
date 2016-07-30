using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
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
using Microsoft.SqlServer.Server;
using MenuItem = GN.Common.DataItem.MenuItem;

namespace GNSeaCorp.Admin.uc
{
    public partial class UcProductCU : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin-Login-Status"] != null)
            {
                if (Session["Admin-Login-Status"].Equals(Constants.WR_SUCCESS))
                {
                    if (!IsPostBack)
                    {
                        if (Request.QueryString.AllKeys.Contains("Id") && Request.QueryString.AllKeys.Contains("CRUD"))
                        {
                            if (!string.IsNullOrEmpty(Request["Id"]) && !string.IsNullOrEmpty(Request["CRUD"]) && Request["CRUD"].Equals(Constants.WS_UPDATE))
                            {
                                ProductItem productItem = new ProductItem();

                                productItem.ProductId = Request["Id"];
                                productItem.Crud = Constants.WS_RETRIEVE;

                                IProductProxy proxy = new ProductProxy();
                                DataTable result = (DataTable)proxy.ProductCRUD(productItem);

                                txtProductName.Text = result.Rows[0][DbSchema.Product.PRODUCT_NAME].ToString();
                                txtDescription.Text = result.Rows[0][DbSchema.Product.DESCRIPTION].ToString();
                                txtPrice.Text = Convert.ToDouble(result.Rows[0][DbSchema.Product.PRICE1].ToString()).ToString();
                                lblImageUrlTemp.Text =
                                    (string.IsNullOrEmpty(result.Rows[0][DbSchema.IMAGE_URL].ToString()))
                                        ? "image.jpg"
                                        : result.Rows[0][DbSchema.IMAGE_URL].ToString();
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
                ProductItem productItem = new ProductItem();

                productItem.ProductName = txtProductName.Text;
                productItem.Price1 = Convert.ToDecimal(txtPrice.Text);
                productItem.Description = txtDescription.Text;
                if (Session["UserId"] != null)
                    productItem.User = Session["UserId"].ToString();

                if (!string.IsNullOrEmpty(lblImageUrlTemp.Text))
                    productItem.ImageUrl = lblImageUrlTemp.Text;

                if (!Request.QueryString.AllKeys.Contains("Id") || !Request.QueryString.AllKeys.Contains("CRUD"))
                    productItem.Crud = Constants.WS_INSERT;
                else
                {
                    productItem.Crud = Constants.WS_UPDATE;
                    productItem.ProductId = Request.QueryString["Id"];
                }

                IProductProxy proxy = new ProductProxy();
                string result = (String)proxy.ProductCRUD(productItem);

                if (result.Equals(Constants.WR_SUCCESS))
                {
                    MessageBox.Show("Save is successful", this);
                    Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + "UcProductList", false);
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
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCPRODUCTLIST, false);
        }
    }
}