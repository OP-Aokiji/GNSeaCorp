using System;
using System.Collections.Generic;
using System.Linq;
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
    public class NewsDAO:INewsDAO
    {
        public object NewsCRUD(NewsItem newsItem)
        {
            IDataAccessObject accessObj = new DataAccessObject();
            object[] obj = new object[] { };
            string procedureName = string.Empty;
            string returnDatatype = string.Empty;

            switch (newsItem.Crud)
            {
                case Constants.WS_RETRIEVE:
                    obj = new object[] {
                                        Constants.REFIX_PARAMETER + DbSchema.News.NEWS_ID, newsItem.NewsId
                                    };
                    procedureName = DbSchema.Menu.P_MENUSEARCH;
                    returnDatatype = Constants.DATATABLE;
                    break;
                case Constants.WS_INSERT:
                case Constants.WS_UPDATE:
                    obj = new object[] {    Constants.REFIX_PARAMETER + DbSchema.News.NEWS_ID, newsItem.NewsId,
                                        Constants.REFIX_PARAMETER + DbSchema.News.TITLE,newsItem.Title,
                                        Constants.REFIX_PARAMETER + DbSchema.News.SUMMARY,newsItem.Summary,
                                        Constants.REFIX_PARAMETER + DbSchema.News.CONTENT,newsItem.Content,
                                        Constants.REFIX_PARAMETER + DbSchema.USER, newsItem.User
                                    };
                    procedureName = DbSchema.News.P_NEWSENTRY;
                    returnDatatype = Constants.STRING;
                    break;
                case Constants.WS_DELETE:
                    obj = new object[] { Constants.REFIX_PARAMETER + DbSchema.News.NEWS_ID, newsItem.NewsId,
                                       Constants.REFIX_PARAMETER + DbSchema.USER,   newsItem.User
                                    };
                    procedureName = DbSchema.Menu.P_MENUDELETE;
                    returnDatatype = Constants.STRING;
                    break;
            }

            DataTable dataResult = accessObj.ExecuteDatatable(procedureName, obj);

            if (returnDatatype.Equals(Constants.DATATABLE)) { 
                return dataResult;
            } else { 
                return dataResult.Rows[0][Constants.ERR_CODE].ToString();
            }
        }
    }
}
