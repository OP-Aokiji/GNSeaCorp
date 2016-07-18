using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.DataItem
{
    public class RoleItem
    {
        private string _roleId;
        private bool _type;
        private string _roleName;
        private string _description;
        private bool _roleFlag;
        private bool _validFlag;
        private bool _readOnly;
        private bool _enableInsert;
        private bool _enableUpdate;
        private bool _enableDelete;
        private string _addUser;
        private DateTime _addDate;
        private string _updateUser;
        private DateTime _updateDate;

        public string RoleId
        {
            get
            {
                return _roleId;
            }

            set
            {
                _roleId = value;
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

        public string RoleName
        {
            get
            {
                return _roleName;
            }

            set
            {
                _roleName = value;
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

        public bool RoleFlag
        {
            get
            {
                return _roleFlag;
            }

            set
            {
                _roleFlag = value;
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

        public bool ReadOnly
        {
            get
            {
                return _readOnly;
            }

            set
            {
                _readOnly = value;
            }
        }

        public bool EnableInsert
        {
            get
            {
                return _enableInsert;
            }

            set
            {
                _enableInsert = value;
            }
        }

        public bool EnableUpdate
        {
            get
            {
                return _enableUpdate;
            }

            set
            {
                _enableUpdate = value;
            }
        }

        public bool EnableDelete
        {
            get
            {
                return _enableDelete;
            }

            set
            {
                _enableDelete = value;
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
