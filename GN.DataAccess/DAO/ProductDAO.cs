using System;
using System.Collections.Generic;
using System.Data;
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
    public class ProductDAO:IProductDAO
    {
        public object ProductCRUD(ProductItem productItem)
        {
            IDataAccessObject accessObject = new DataAccessObject();

            object[] obj = new object[] {};
            string procedureName = string.Empty;
            string returnType = string.Empty;

            if (productItem.Crud == Constants.WS_RETRIEVE)
            {
                obj = new object[]
                {
                    Constants.REFIX_PARAMETER + DbSchema.Product.PRODUCT_ID, productItem.ProductId
                };

                procedureName = DbSchema.Product.P_PRODUCT;
                returnType = Constants.DATATABLE;
            }
            else if (productItem.Crud == Constants.RETRIEVE_ALL)
            {
                obj = new object[]
                {

                };

                procedureName = DbSchema.Product.P_PRODUCTALL;
                returnType = Constants.DATATABLE;
            }
            else if (productItem.Crud == Constants.WS_INSERT || productItem.Crud == Constants.WS_UPDATE)
            {
                obj = new object[]
                {
                    Constants.REFIX_PARAMETER + DbSchema.Product.PRODUCT_ID, productItem.ProductId,
                    Constants.REFIX_PARAMETER + DbSchema.Product.PRODUCT_NAME, productItem.ProductName,
                    Constants.REFIX_PARAMETER + DbSchema.Product.PRICE1, productItem.Price1,
                    Constants.REFIX_PARAMETER + DbSchema.Product.DESCRIPTION, productItem.Description,
                    Constants.REFIX_PARAMETER + DbSchema.IMAGE_URL, productItem.ImageUrl,
                    Constants.REFIX_PARAMETER + DbSchema.USER, productItem.User,
                    Constants.REFIX_PARAMETER + DbSchema.ProductMenu.MENU_ID, productItem.MenuId
 
                };

                procedureName = DbSchema.Product.P_PRODUCTENTRY;
                returnType = Constants.STRING;
            }
            else if (productItem.Crud == Constants.WS_DELETE)
            {
                obj = new object[]
                {
                    Constants.REFIX_PARAMETER + DbSchema.Product.PRODUCT_ID, productItem.ProductId,
                    Constants.REFIX_PARAMETER + DbSchema.USER, productItem.User,
                    Constants.REFIX_PARAMETER + DbSchema.ProductMenu.MENU_ID, productItem.MenuId
                };

                procedureName = DbSchema.Product.P_PRODUCTDELETE;
                returnType = Constants.STRING;
            }
            DataTable dataResult = (DataTable) accessObject.ExecuteDatatable(procedureName, obj);

            if (returnType.Equals(Constants.DATATABLE))
                return dataResult;
            else
                return dataResult.Rows[0][Constants.ERR_CODE].ToString();
        }
    }
}
