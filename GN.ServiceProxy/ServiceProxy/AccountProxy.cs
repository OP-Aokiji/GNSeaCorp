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
    public class AccountProxy:IAccountProxy
    {
        public object AccountCRUD(AccountItem accountItem)
        {
            IAccountDAO accountDao = new AccountDAO();
            return  accountDao.AccountCRUD(accountItem);
        }

        public DataTable AccountChangePassword(AccountItem accountItem, string password)
        {
            IAccountDAO accountDao = new AccountDAO();
            return (DataTable)accountDao.AccountChangePassword(accountItem, password);
        }
    }
}
