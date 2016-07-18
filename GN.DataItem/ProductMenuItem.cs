﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.DataItem
{
    public class ProductMenuItem
    {
        private string _menuId;
        private bool _type;
        private string _productId;
        private string _description;
        private bool _validFlag;
        private string _addUser;
        private DateTime _addDate;
        private string _updateUser;
        private DateTime _updateDate;

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