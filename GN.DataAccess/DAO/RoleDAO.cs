﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.ADOService;
using GN.Common;
using GN.DataAccess.IDAO;
using GN.Common.DataItem;
using GN.Common.Schema;

namespace GN.DataAccess.DAO
{
    public class RoleDAO:IRoleDAO
    {
        public object RoleCRUD(RoleItem roleItem)
        {
            IDataAccessObject accessObject = new DataAccessObject();
            object[] obj = new object[] {};
            string procedureName = string.Empty;
            string returnType = string.Empty;

            if (roleItem.Crud.Equals(Constants.WS_RETRIEVE))
            {
                //Will be added in the future
                obj = new object[]
                {
                    Constants.REFIX_PARAMETER + DbSchema.Role.ROLE_ID, roleItem.RoleId
                };
                procedureName = DbSchema.Role.P_ROLESEARCH;
                returnType = Constants.DATATABLE;
            }
            else if (roleItem.Crud.Equals(Constants.WS_INSERT) || roleItem.Crud.Equals(Constants.WS_UPDATE))
            {
                obj = new object[]
                {
                    Constants.REFIX_PARAMETER + DbSchema.Role.ROLE_ID, roleItem.RoleId,
                    Constants.REFIX_PARAMETER + DbSchema.TYPE,roleItem.Type,
                    Constants.REFIX_PARAMETER + DbSchema.Role.ROLE_NAME, roleItem.RoleName,
                    Constants.REFIX_PARAMETER + DbSchema.Role.READ_ONLY, roleItem.ReadOnly,
                    Constants.REFIX_PARAMETER + DbSchema.Role.ENABLE_INSERT, roleItem.EnableInsert,
                    Constants.REFIX_PARAMETER + DbSchema.Role.ENABLE_UPDATE, roleItem.EnableUpdate,
                    Constants.REFIX_PARAMETER + DbSchema.Role.ENABLE_DELETE, roleItem.EnableDelete,
                    Constants.REFIX_PARAMETER + DbSchema.DES,roleItem.Description,
                    Constants.REFIX_PARAMETER + DbSchema.USER, roleItem.User
                };

                procedureName = DbSchema.Role.P_ROLEENTRY;
                returnType = Constants.DATATABLE;
            }
            else if (roleItem.Crud.Equals(Constants.WS_DELETE))
            {
                obj = new object[]
                {
                    Constants.REFIX_PARAMETER + DbSchema.Role.ROLE_ID, roleItem.RoleId,
                    Constants.REFIX_PARAMETER + DbSchema.TYPE, roleItem.Type,
                    Constants.REFIX_PARAMETER + DbSchema.USER, roleItem.User
                };
                procedureName = DbSchema.Slide.P_SLIDEDELETE;
                returnType = Constants.STRING;
            }

            DataTable dataResult = accessObject.ExecuteDatatable(procedureName, obj);

            if (returnType.Equals(Constants.DATATABLE))
                return dataResult;
            else return dataResult.Rows[0][Constants.ERR_CODE].ToString();
        }
    }
}
