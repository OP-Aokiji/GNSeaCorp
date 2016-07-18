using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GN.DataItem;

namespace GN.DataAccess.IDAO
{
    public interface ISlideDAO
    {
        Object SlideCRUD(SildeItem slideItem);
    }
}
