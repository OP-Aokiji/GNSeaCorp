using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GNSeaCorp.Admin.uc
{
    public partial class UcMenuCU : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            
        }

        private void ClearItem()
        {
            txtMenu_Cd.Text = "";
            txtMenu_Name.Text = "";
            txtMenu_Cd.Focus();
        }
    }
}