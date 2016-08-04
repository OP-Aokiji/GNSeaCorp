using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.ADOService;
using GN.Common;
using GN.Common.Schema;
using GN.Common.DataItem;
using GN.DataAccess.IDAO;


namespace GN.DataAccess.DAO
{
    public class AccountDAO:IAccountDAO
    {
        public object AccountCRUD(AccountItem accountItem)
        {
            IDataAccessObject accessObj = new DataAccessObject();
            object[] obj = new object[] { };
            string procedureName = string.Empty;
            string returnDatatype = string.Empty;

            if (accountItem.Crud.Equals(Constants.RETRIEVE_ALL))
            {
                obj = new object[] {    Constants.REFIX_PARAMETER + DbSchema.Account.USER_ID, accountItem.UserId  };
                procedureName = DbSchema.Account.P_USERSEARCH;
                returnDatatype = Constants.DATATABLE;
            }
            else if (accountItem.Crud.Equals(Constants.WS_INSERT) || accountItem.Crud.Equals(Constants.WS_UPDATE))
            {
                obj = new object[] {    Constants.REFIX_PARAMETER + DbSchema.Account.USER_ID, accountItem.UserId,
                                        Constants.REFIX_PARAMETER + DbSchema.Account.ROLD_ID,  accountItem.RoldId,
                                        Constants.REFIX_PARAMETER + DbSchema.Account.PASSWORD,  accountItem.Password,
                                        Constants.REFIX_PARAMETER + DbSchema.Account.FIRST_NAME,  accountItem.FirstName,
                                        Constants.REFIX_PARAMETER + DbSchema.Account.LAST_NAME,  accountItem.LastName,
                                        Constants.REFIX_PARAMETER + DbSchema.Account.ADDRESS,  accountItem.Address,
                                        Constants.REFIX_PARAMETER + DbSchema.Account.GENDER,  accountItem.Gender,
                                        Constants.REFIX_PARAMETER + DbSchema.Account.PHONE_NUMBER,  accountItem.PhoneNumber,
                                        Constants.REFIX_PARAMETER + DbSchema.Account.IDENTIFICATION,  accountItem.Identification,
                                        Constants.REFIX_PARAMETER + DbSchema.Account.AVATAR_URL,  accountItem.AvatarUrl,
                                        Constants.REFIX_PARAMETER + DbSchema.VALID_FLAG,  accountItem.ValidFlag,
                                        Constants.REFIX_PARAMETER + DbSchema.ADD_DATE,  accountItem.AddUser,
                                        Constants.REFIX_PARAMETER + DbSchema.ADD_DATE,  accountItem.AddDate,
                                        Constants.REFIX_PARAMETER + DbSchema.UPDATE_USER,  accountItem.UpdateUser,
                                        Constants.REFIX_PARAMETER + DbSchema.UPDATE_DATE,  accountItem.UpdateDate
                                    };
                procedureName = DbSchema.Account.P_USERENTRY;
                returnDatatype = Constants.STRING;
            }
            else if (accountItem.Crud.Equals(Constants.WS_DELETE))
            {
                obj = new object[] { Constants.REFIX_PARAMETER + DbSchema.Account.USER_ID , accountItem.UserId,
                                       Constants.REFIX_PARAMETER + DbSchema.USER,   accountItem.UpdateUser
                                    };
                procedureName = DbSchema.Account.P_USERENTRY;
            }
            else if (accountItem.Crud.Equals(Constants.WS_LOGIN))
            {
                obj = new object[] {
                                        Constants.REFIX_PARAMETER + DbSchema.Account.USER_ID , accountItem.UserId,
                                       Constants.REFIX_PARAMETER + DbSchema.Account.PASSWORD, accountItem.Password
                                    };
                procedureName = DbSchema.Account.P_ACCOUNT_LOGIN;
                returnDatatype = Constants.DATATABLE;
            }

            DataTable dataResult = accessObj.ExecuteDatatable(procedureName, obj);

            if (returnDatatype.Equals(Constants.DATATABLE))
                return dataResult;
            else return dataResult.Rows[0][Constants.ERR_CODE].ToString();
        }

        public object AccountChangePassword(AccountItem accountItem, string password)
        {
            IDataAccessObject accessObj = new DataAccessObject();
            object[] obj = new object[] {
                                            DbSchema.Account.USER_ID, accountItem.UserId,
                                            DbSchema.Account.PASSWORD, accountItem.Password,
                                            DbSchema.Account.NEW_PASSWORD,  password
                                        };
            return (DataTable)accessObj.ExecuteDatatable(DbSchema.Account.P_CHANGEPASSWORD, obj);
        }
    }
}
