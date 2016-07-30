using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;
using GN.Common.DataItem;
using GN.DataAccess.DAO;
using GN.DataAccess.IDAO;
using GN.ServiceProxy.IServiceProxy;

namespace GN.ServiceProxy.ServiceProxy
{
    public class ProductProxy:IProductProxy
    {
        public object ProductCRUD(ProductItem productItem)
        {
            IProductDAO productDao = new ProductDAO();
            return productDao.ProductCRUD(productItem);
        }
    }
}
