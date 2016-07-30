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

namespace GNSeaCorp.Admin.uc
{
    public partial class UcProductList : System.Web.UI.UserControl
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
            ProductItem productItem = new ProductItem();
            productItem.Crud = Constants.WS_RETRIEVE;
            IProductProxy proxy = new ProductProxy();
            grdProduct.DataSource = proxy.ProductCRUD(productItem);
            grdProduct.DataBind();
        }

        protected void grdProduct_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdProduct.PageIndex = e.NewPageIndex;
            BindData();
        }

        protected void grdProduct_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCPRODUCTCU + "&Id=" + grdProduct.Rows[e.NewEditIndex].Cells[0].Text + "&CRUD=U");
        }

        protected void grdProduct_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ProductItem productItem = new ProductItem();
            productItem.ProductId = grdProduct.Rows[e.RowIndex].Cells[0].Text;
            productItem.Crud = Constants.WS_DELETE;
            productItem.User = "Admin";

            IProductProxy proxy = new ProductProxy();
            string resut = (string) proxy.ProductCRUD(productItem);

            if (resut.Equals(Constants.WR_SUCCESS))
            {
                MessageBox.Show("Delete success", this);
                BindData();
            }
            else
                MessageBox.Show("Delete fail", this);
        }
    }
}