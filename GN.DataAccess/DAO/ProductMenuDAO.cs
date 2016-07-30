using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using GN.DataAccess.IDAO;
using GN.Common.DataItem;
using GN.ADOService;
using GN.Common;
using GN.Common.Schema;
using System.Data;

namespace GN.DataAccess.DAO
{
    public class ProductMenuDAO:IProductMenuDAO
    {
        public object ProductMenuCRUD(ProductMenuItem productMenuItem)
        {
            IDataAccessObject accessObj = new DataAccessObject();
            object[] obj = new object[] { };
            string procedureName = string.Empty;
            string returnDatatype = string.Empty;

            switch (productMenuItem.Crud)
            {
                case Constants.WS_RETRIEVE:
                    obj = new object[] {  };
                    procedureName = "SP_USER_ACOUNT_RETRIEVE";
                    returnDatatype = Constants.DATATABLE;
                    break;
                case Constants.WS_INSERT:
                    obj = new object[] {    
                                    };
                    procedureName = "";
                    returnDatatype = Constants.STRING;
                    break;
                case Constants.WS_UPDATE:
                    obj = new object[] {    
                                    };
                    procedureName = DbSchema.Account.P_USERENTRY;
                    returnDatatype = Constants.STRING;
                    break;
                case Constants.WS_DELETE:
                    obj = new object[] { 
                                    };
                    procedureName = DbSchema.Account.P_USERENTRY;
                    break;
            }

            DataTable dataResult = accessObj.ExecuteDatatable(procedureName, obj);

            if (returnDatatype.Equals(Constants.DATATABLE))
                return dataResult;
            else return dataResult.Rows[0][Constants.ERR_CODE].ToString();
        }
    }
}
