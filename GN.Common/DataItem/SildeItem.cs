using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.Common.DataItem
{
    public class SildeItem:DataItem
    {
        private string _sildeId;
        private string _description;
        private string _imageUrl;
        private string _slogan1;
        private string _slogan2;
        private string _validFlag;

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
    }
}
