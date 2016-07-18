using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.DataItem
{
    class ItemCore
    {
        private string _coreId;
        private string _itemId;
        private string _itemName;
        private bool _validFlag;
        private string _addUser;
        private DateTime _addDate;
        private string _updateUser;
        private DateTime _updateDate;

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

        public string AddUser
        {
            get
            {
                return _addUser;
            }

            set
            {
                _addUser = value;
            }
        }

        public DateTime AddDate
        {
            get
            {
                return _addDate;
            }

            set
            {
                _addDate = value;
            }
        }

        public string UpdateUser
        {
            get
            {
                return _updateUser;
            }

            set
            {
                _updateUser = value;
            }
        }

        public DateTime UpdateDate
        {
            get
            {
                return _updateDate;
            }

            set
            {
                _updateDate = value;
            }
        }
    }
}
