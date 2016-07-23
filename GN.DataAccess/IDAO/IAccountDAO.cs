using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.Common.DataItem;

namespace GN.DataAccess.IDAO
{
    public interface IAccountDAO
    {
        Object AccountCRUD(AccountItem accountItem);
    }
}
