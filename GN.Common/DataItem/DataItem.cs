using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.Common.DataItem
{
    public class DataItem
    {
        private string _crud = Constants.WS_RETRIEVE;
        private string _addUser = "";
        private DateTime _addDate;
        private string _updateUser = "";
        private DateTime _updateDate;
        private string _description = "";
        private string _offSet = "";
        private string _limit = "";
        private string _order = "";
        private string _user = "";

        public string Crud
        {
            get
            {
                return _crud;
            }

            set
            {
                _crud = value;
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

        public string OffSet
        {
            get
            {
                return _offSet;
            }

            set
            {
                _offSet = value;
            }
        }

        public string Limit
        {
            get
            {
                return _limit;
            }

            set
            {
                _limit = value;
            }
        }

        public string Order
        {
            get
            {
                return _order;
            }

            set
            {
                _order = value;
            }
        }

        public string User
        {
            get
            {
                return _user;
            }

            set
            {
                _user = value;
            }
        }
    }
}
