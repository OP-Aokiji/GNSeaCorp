using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.Common.DataItem;

namespace GN.ServiceProxy.IServiceProxy
{
    public interface IRoleRoxy
    {
        object RoleCrud(RoleItem roleItem);
    }
}
