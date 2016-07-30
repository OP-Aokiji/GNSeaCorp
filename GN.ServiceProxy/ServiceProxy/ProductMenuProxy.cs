using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.Common.DataItem;
using GN.DataAccess.DAO;
using GN.DataAccess.IDAO;
using GN.ServiceProxy.IServiceProxy;

namespace GN.ServiceProxy.ServiceProxy
{
    public class ProductMenuProxy:IProductMenuProxy
    {
        public object ProductMenuCRUD(ProductMenuItem productMenuItem)
        {
            IProductMenuDAO productMenuDao =  new ProductMenuDAO();
            return productMenuDao.ProductMenuCRUD(productMenuItem);
        }
    }
}
