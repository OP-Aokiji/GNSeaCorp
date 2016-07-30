using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;
using GN.Common.DataItem;
using GN.DataAccess.DAO;
using GN.DataAccess.IDAO;
using GN.ServiceProxy.IServiceProxy;

namespace GN.ServiceProxy.ServiceProxy
{
    public class NewsRoxy:INewsRoxy
    {
        public object NewsCrud(NewsItem newsItem)
        {
            INewsDAO newsDao = new NewsDAO();
            return newsDao.NewsCRUD(newsItem);
        }
    }
}
