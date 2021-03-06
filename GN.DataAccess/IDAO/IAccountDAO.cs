﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.Common.DataItem;

namespace GN.DataAccess.IDAO
{
    public interface IAccountDAO
    {
        object AccountCRUD(AccountItem accountItem);

        object AccountChangePassword(AccountItem accountItem, string password);
    }
}
