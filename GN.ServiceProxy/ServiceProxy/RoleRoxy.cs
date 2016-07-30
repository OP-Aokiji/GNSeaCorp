using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.Common.DataItem;
using GN.DataAccess.DAO;
using GN.DataAccess.IDAO;
using GN.ServiceProxy.IServiceProxy;

namespace GN.ServiceProxy.ServiceProxy
{
    public class RoleRoxy: IRoleRoxy
    {
        public object RoleCrud(RoleItem roleItem)
        {
            IRoleDAO roleDao = new RoleDAO();
            return roleDao.RoleCRUD(roleItem);
        }
    }
}
