using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.DataItem
{
    class News
    {
        private string _newsId;
        private string _tagId;
        private string _title;
        private string _summary;
        private string _content;
        private bool _validFlag;
        private string _addUser;
        private DateTime _addDate;
        private string _updateUser;
        private DateTime _updateDate;

        public string NewsId
        {
            get
            {
                return _newsId;
            }

            set
            {
                _newsId = value;
            }
        }

        public string TagId
        {
            get
            {
                return _tagId;
            }

            set
            {
                _tagId = value;
            }
        }

        public string Title
        {
            get
            {
                return _title;
            }

            set
            {
                _title = value;
            }
        }

        public string Summary
        {
            get
            {
                return _summary;
            }

            set
            {
                _summary = value;
            }
        }

        public string Content
        {
            get
            {
                return _content;
            }

            set
            {
                _content = value;
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
