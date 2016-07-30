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
    public class SlideDAO:ISlideDAO
    {
        public object SlideCRUD(SildeItem slideItem)
        {
            IDataAccessObject accessObject = new DataAccessObject();
            object[] obj = new object[] {};
            string procedureName = string.Empty;
            string returnType = string.Empty;
            if (slideItem.Crud.Equals(Constants.WS_RETRIEVE))
            {
                obj = new object[]
                {
                    Constants.REFIX_PARAMETER + DbSchema.Slide.SLIDE_ID, slideItem.Slogan1,
                    Constants.REFIX_PARAMETER + DbSchema.OFFSET, slideItem.OffSet,
                    Constants.REFIX_PARAMETER + DbSchema.LIMIT, slideItem.Limit,
                    Constants.REFIX_PARAMETER + DbSchema.ORDER, slideItem.Order
                };
                procedureName = DbSchema.Slide.P_SLIDESEARCH;
                returnType = Constants.STRING;
            }
            else if (slideItem.Crud.Equals(Constants.WS_INSERT) || slideItem.Crud.Equals(Constants.WS_UPDATE))
            {
                obj = new object[]
                {
                    Constants.REFIX_PARAMETER + DbSchema.Slide.SLIDE_ID, slideItem.SlideId,
                    Constants.REFIX_PARAMETER + DbSchema.DES, slideItem.Description,
                    Constants.REFIX_PARAMETER + DbSchema.IMAGE_URL, slideItem.ImageUrl,
                    Constants.REFIX_PARAMETER + DbSchema.Slide.SLOGAN1, slideItem.Slogan1,
                    Constants.REFIX_PARAMETER + DbSchema.Slide.SLOGAN2, slideItem.Slogan2,
                    Constants.REFIX_PARAMETER + DbSchema.USER, slideItem.UpdateUser
                };
                procedureName = DbSchema.Slide.P_SLIDEENTRY;
                returnType = Constants.STRING;
            }
            else if (slideItem.Crud.Equals(Constants.WS_DELETE))
            {
                obj = new object[]
                {
                    Constants.REFIX_PARAMETER + DbSchema.Slide.SLIDE_ID, slideItem.SlideId,
                    Constants.REFIX_PARAMETER + DbSchema.UPDATE_USER, slideItem.UpdateUser,
                    Constants.REFIX_PARAMETER + DbSchema.UPDATE_DATE, slideItem.UpdateDate
                };
                procedureName = DbSchema.Slide.P_SLIDEENTRY;
                returnType = Constants.STRING;
            }

            DataTable result = (DataTable) accessObject.ExecuteDatatable(procedureName, obj);
            if (returnType.Equals(Constants.DATATABLE))
                return result;
            else return result.Rows[0][Constants.ERR_CODE].ToString();
        }
    }
}
