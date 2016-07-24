using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.Common.DataItem
{
    public class RoleItem:DataItem
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
    }
}
