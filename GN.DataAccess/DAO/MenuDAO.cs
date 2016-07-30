using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.DataAccess.IDAO;
using GN.Common.DataItem;
using GN.Common.Schema;
using GN.Common;
using GN.ADOService;
using System.Data;

namespace GN.DataAccess.DAO
{
    public class MenuDAO:IMenuDAO
    {
        public object MenuCRUD(MenuItem menuItem)
        {
            IDataAccessObject accessObj = new DataAccessObject();
            object[] obj = new object[] { };
            string procedureName = string.Empty;
            string returnDatatype = string.Empty;

            switch (menuItem.Crud)
            {
                case Constants.WS_RETRIEVE:
                    obj = new object[] {
                                        Constants.REFIX_PARAMETER + DbSchema.Menu.MENU_ID, menuItem.MenuId
                                    };
                    procedureName = DbSchema.Menu.P_MENUSEARCH;
                    returnDatatype = Constants.DATATABLE;
                    break;
                case Constants.WS_INSERT:
                    obj = new object[] {    Constants.REFIX_PARAMETER + DbSchema.Menu.MENU_ID, menuItem.MenuId,
                                        Constants.REFIX_PARAMETER + DbSchema.Menu.MENU_NAME, menuItem.MenuName,
                                        Constants.REFIX_PARAMETER + DbSchema.DES,"",
                                        Constants.REFIX_PARAMETER + DbSchema.USER, menuItem.AddUser
                                    };
                    procedureName = DbSchema.Menu.P_MENUENTRY;
                    returnDatatype = Constants.STRING;
                    break;
                case Constants.WS_UPDATE:
                    obj = new object[] {    Constants.REFIX_PARAMETER + DbSchema.Menu.MENU_ID, menuItem.MenuId,
                                        Constants.REFIX_PARAMETER + DbSchema.Menu.MENU_NAME, menuItem.MenuName,
                                        Constants.REFIX_PARAMETER + DbSchema.DES,"",
                                        Constants.REFIX_PARAMETER + DbSchema.USER, menuItem.UpdateUser
                                    };
                    procedureName = DbSchema.Menu.P_MENUENTRY;
                    returnDatatype = Constants.STRING;
                    break;
                case Constants.WS_DELETE:
                    obj = new object[] { Constants.REFIX_PARAMETER + DbSchema.Menu.MENU_ID , menuItem.MenuId,
                                       Constants.REFIX_PARAMETER + DbSchema.USER,   menuItem.UpdateUser
                                    };
                    procedureName = DbSchema.Menu.P_MENUDELETE;
                    returnDatatype = Constants.STRING;
                    break;
            }

            DataTable dataResult = accessObj.ExecuteDatatable(procedureName, obj);

            if (returnDatatype.Equals(Constants.DATATABLE))
                return dataResult;
            else return dataResult.Rows[0][Constants.ERR_CODE].ToString();
        }
    }
}
