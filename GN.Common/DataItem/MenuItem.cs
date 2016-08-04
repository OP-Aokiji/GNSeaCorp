using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.Common.DataItem
{
    public class MenuItem:DataItem
    {
        private string _menuId = "";
        private bool _type = true;
        private string _parentId = "";
        private string _menuName = "";
        private string _description = "";
        private bool _validFlag = true;

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

        public string ParentId
        {
            get
            {
                return _parentId;
            }

            set
            {
                _parentId = value;
            }
        }

        public string MenuName
        {
            get
            {
                return _menuName;
            }

            set
            {
                _menuName = value;
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
            get { return _validFlag; }

            set { _validFlag = value; }

        }
    }
}
