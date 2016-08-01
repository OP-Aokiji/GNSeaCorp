using System;
using System.Collections.Generic;
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
    public partial class UcSlideList : System.Web.UI.UserControl
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
            SildeItem slideItem = new SildeItem();
            slideItem.Crud = Constants.WS_RETRIEVE;
            ISlideProxy proxy = new SlideProxy();
            repeaterBanner.DataSource = proxy.SlideCrud(slideItem);
            repeaterBanner.DataBind();
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCSLIDECU, false);
        }

        protected void repeaterBanner_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals(Constants.DELETE_ITEM))
            {
                try
                {
                    //string confirmValue = Request.Form["confirm_value"];
                    //if (confirmValue != null && confirmValue.Equals("Yes"))
                    //{
                    SildeItem slideItem = new SildeItem();
                    slideItem.SlideId = e.CommandArgument.ToString();
                    slideItem.Crud = Constants.WS_DELETE;
                    slideItem.User = Session["UserId"].ToString();

                    ISlideProxy proxy = new SlideProxy();
                    string result = (string)proxy.SlideCrud(slideItem);
                    if (result.Equals(Constants.WR_SUCCESS))
                    {
                        BindData();
                        MessageBox.Show(MessageBox.DELETE_SUCCESS, this);
                    }
                    else
                        MessageBox.Show(MessageBox.DELETE_FAILD, this);
                    //}
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString(), this);
                }
            }
            else if (e.CommandName.Equals(Constants.UPDATE_ITEM))
            {
                //Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + "ucBannerCU&img_Id=" + e.CommandArgument.ToString() + "&crud=U");
                Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCSLIDECU + "&Id=" + e.CommandArgument.ToString() + "&CRUD=U");
            }
        }

        //protected void grdProduct_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    try
        //    {
        //        SildeItem slideItem = new SildeItem();
        //        slideItem.SlideId = ((Label)grdProduct.Rows[e.RowIndex].FindControl("Label1")).Text;
        //        slideItem.Crud = Constants.WS_DELETE;
        //        if (Session["UserId"] != null)
        //            slideItem.User = Session["UserId"].ToString();

        //        ISlideProxy proxy = new SlideProxy();
        //        string resut = (string)proxy.SlideCrud(slideItem);

        //        if (resut.Equals(Constants.WR_SUCCESS))
        //        {
        //            MessageBox.Show("Delete success", this);
        //            BindData();
        //        }
        //        else
        //            MessageBox.Show("Delete fail", this);
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Redirect("~/Admin/" + Constants.Page404);
        //    }
        //}

        //protected void grdProduct_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCPRODUCTCU + "&Id=" + grdProduct.Rows[e.NewEditIndex].Cells[0].Text + "&CRUD=U");
        //}

        //protected void grdProduct_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    grdProduct.PageIndex = e.NewPageIndex;
        //    BindData();
        //}
    }
}