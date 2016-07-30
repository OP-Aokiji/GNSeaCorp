using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GN.Common;
using GN.Common.DataItem;
using GN.ServiceProxy.IServiceProxy;
using GN.ServiceProxy.ServiceProxy;
using GNSeaCorp.cm;

namespace GNSeaCorp.Admin
{
    public partial class UcSlideCU : System.Web.UI.UserControl
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
                SildeItem slideItem = new SildeItem();
                if (txtSlogan1.Text != null && txtSlogan2.Text != "")
                    slideItem.Slogan1 = txtSlogan1.Text;
                if (txtSlogan1.Text != null && txtSlogan2.Text != "")
                    slideItem.Slogan2 = txtSlogan2.Text;
                if (txtSlogan1.Text != null && txtSlogan2.Text != "")
                    slideItem.Description = txtSlogan1.Text;
                if(Session["UserId"] != null)
                    slideItem.User = Session["UserId"].ToString();
                slideItem.Crud = Constants.WS_INSERT;

                ISlideProxy proxy = new SlideProxy();

                string result = (string)proxy.SlideCrud(slideItem);

                MessageBox.Show(result.Equals(Constants.WR_SUCCESS) ? "Saving is successful!!!" : "Fail!", this);
            }
            catch (Exception)
            {
                Response.Redirect("~/Admin/404.aspx");
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

    }
}