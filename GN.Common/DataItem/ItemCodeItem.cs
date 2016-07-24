using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.Common.DataItem
{
    public class ItemCodeItem:DataItem
    {
        private string _coreId;
        private string _itemId;
        private string _itemName;
        private bool _validFlag;

        public string CoreId
        {
            get
            {
                return _coreId;
            }

            set
            {
                _coreId = value;
            }
        }

        public string ItemId
        {
            get
            {
                return _itemId;
            }

            set
            {
                _itemId = value;
            }
        }

        public string ItemName
        {
            get
            {
                return _itemName;
            }

            set
            {
                _itemName = value;
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
