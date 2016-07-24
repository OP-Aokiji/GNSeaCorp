using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.Common.DataItem
{
    public class ProductMenuItem:DataItem
    {
        private string _menuId;
        private bool _type;
        private string _productId;
        private string _description;
        private bool _validFlag;
        public string MenuId
        {
            get
            {
                return _menuId;
            }

            set
            {
                _menuId = value;
            }
        }

        public bool Type
        {
            get
            {
                return _type;
            }

            set
            {
                _type = value;
            }
        }

        public string ProductId
        {
            get
            {
                return _productId;
            }

            set
            {
                _productId = value;
            }
        }

        public string Description
        {
            get
            {
                return _description;
            }

            set
            {
                _description = value;
            }
        }

        public bool ValidFlag
        {
            get
            {
                return _validFlag;
            }

            set
            {
                _validFlag = value;
            }
        }
    }
}
