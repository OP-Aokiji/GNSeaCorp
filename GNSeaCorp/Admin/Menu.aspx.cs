using GN.Common;
using GNSeaCorp.cm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GNSeaCorp.Admin
{
    public partial class Menu : System.Web.UI.Page
    {
        private const string WS_OPTION = "SEARCH";
        private const string WS_CODE = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string[] arrUserControl = new string[] {
                                                         "UcMenuR"
                                                      };
                switch (WS_OPTION)
                {
                    case "SEARCH":
                        placeHolderMenu.Controls.Add(LoadControl(string.Format(Constants.USER_CONTROL_DIR, arrUserControl[0])));
                        break;
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message.ToString(), this);
            }
        }
    }
}