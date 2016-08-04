using GN.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using GN.Common.DataItem;
using GN.Common.Schema;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using GNSeaCorp.cm;
using MenuItem = System.Web.UI.WebControls.MenuItem;

namespace GNSeaCorp.Admin.uc
{
    public partial class UcNewsCu : System.Web.UI.UserControl
    {
        private string News_Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin-Login-Status"] != null)
            {
                if (Session["Admin-Login-Status"].Equals(Constants.WR_SUCCESS))
                {
                    if (!IsPostBack)
                    {
                        ReceiveId();
                        if (News_Id.Trim() != "")
                        {
                            try
                            {
                                NewsItem newsItem = new NewsItem();
                                newsItem.NewsId = News_Id;
                                newsItem.Crud = Constants.WS_RETRIEVE;

                                INewsRoxy proxy = new NewsRoxy();
                                DataTable reDataTable = (DataTable) proxy.NewsCrud(newsItem);
                                txtContent.Text = reDataTable.Rows[0][DbSchema.News.CONTENT].ToString();
                                txtSummary.Text = reDataTable.Rows[0][DbSchema.News.SUMMARY].ToString();
                                txtTitle.Text = reDataTable.Rows[0][DbSchema.News.TITLE].ToString();
                                lblImageUrlTemp.Text = reDataTable.Rows[0][DbSchema.IMAGE_URL].ToString();
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
                News_Id = Session["ItemId"].ToString();
                //Session["ItemId"] = null;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                NewsItem newsItem = new NewsItem();
                newsItem.Content = txtContent.Text;
                newsItem.Summary = txtSummary.Text;
                newsItem.Title = txtTitle.Text;
                if (Session["ItemId"] != null)
                {
                    newsItem.NewsId = Session["ItemId"].ToString();
                }
                

                if (Session["UserId"] != null)
                    newsItem.User = Session["UserId"].ToString();
                else
                    Response.Redirect("~/Admin/Login.aspx");
                if (!string.IsNullOrEmpty(lblImageUrlTemp.Text))
                    newsItem.ImageUrl = lblImageUrlTemp.Text;


                newsItem.Crud = News_Id.Trim() == "" ? Constants.WS_INSERT : Constants.WS_UPDATE;

                INewsRoxy proxy = new NewsRoxy();
                string result = (string)proxy.NewsCrud(newsItem);

                if (result.Equals(Constants.WR_SUCCESS))
                {
                    MessageBox.Show("Save is successful", this);
                    Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCNEWSR, false);
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
            Response.Redirect(Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCNEWSR);
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtContent.Text = "";
            txtSummary.Text = "";
            txtTitle.Text = "";
            txtTitle.Focus();
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
    }
}