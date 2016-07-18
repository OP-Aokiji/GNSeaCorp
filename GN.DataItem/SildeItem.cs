using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.DataItem
{
    public class SildeItem
    {
        private string _sildeId;
        private string _description;
        private string _imageUrl;
        private string _slogan1;
        private string _slogan2;
        private string _validFlag;
        private bool _addUser;
        private DateTime _addDate;
        private string _updateUser;
        private DateTime _updateDate;

        public string SildeId
        {
            get
            {
                return _sildeId;
            }

            set
            {
                _sildeId = value;
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

        public string ImageUrl
        {
            get
            {
                return _imageUrl;
            }

            set
            {
                _imageUrl = value;
            }
        }

        public string Slogan1
        {
            get
            {
                return _slogan1;
            }

            set
            {
                _slogan1 = value;
            }
        }

        public string Slogan2
        {
            get
            {
                return _slogan2;
            }

            set
            {
                _slogan2 = value;
            }
        }

        public string ValidFlag
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

        public bool AddUser
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
