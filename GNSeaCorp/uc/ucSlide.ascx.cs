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

namespace GNSeaCorp.uc
{
    public partial class ucSlide : System.Web.UI.UserControl
    {
        public static DataTable dataSlide = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SildeItem slideItem = new SildeItem();
                slideItem.Crud = Constants.WS_RETRIEVE;
                
                ISlideProxy proxy = new SlideProxy();
                dataSlide = (DataTable)proxy.SlideCrud(slideItem);
            }
        }
    }
}