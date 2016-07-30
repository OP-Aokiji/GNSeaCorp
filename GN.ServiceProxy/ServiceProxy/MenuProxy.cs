using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.Common.DataItem;
using GN.DataAccess.DAO;
using GN.DataAccess.IDAO;
using GN.ServiceProxy.IServiceProxy;

namespace GN.ServiceProxy.ServiceProxy
{
    public class MenuProxy : IMenuProxy
    {
        public object MenuCrud(MenuItem menuItem)
        {
            IMenuDAO menuDAO = new MenuDAO();
            return menuDAO.MenuCRUD(menuItem);
        }
    }
}
