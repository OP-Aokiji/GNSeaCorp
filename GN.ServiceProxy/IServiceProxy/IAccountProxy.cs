using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.Common.DataItem;

namespace GN.ServiceProxy.IServiceProxy
{
    public interface IAccountProxy
    {
        object AccountCRUD(AccountItem accountItem);

        DataTable AccountChangePassword(AccountItem accountItem, string password);
    }
}
