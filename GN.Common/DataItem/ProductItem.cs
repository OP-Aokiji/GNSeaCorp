using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.Common.DataItem
{
    public class ProductItem
    {
        private string _productId;
        private string _productName;
        private string _madeIn;
        private int _quantity;
        private string _type;
        private string _unit1;
        private string _unit2;
        private string _unit3;
        private long _price1;
        private long _price2;
        private long _price3;
        private int _discount1;
        private int _discount2;
        private int _discount3;
        private long _vat1;
        private long _vat2;
        private long _vat3;
        private string _description;
        private string _imageUrl;
        private bool _validFlag;
        private string _addUser;
        private DateTime _addDate;
        private string _updateUser;
        private DateTime _updateDate;

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

        public string ProductName
        {
            get
            {
                return _productName;
            }

            set
            {
                _productName = value;
            }
        }

        public string MadeIn
        {
            get
            {
                return _madeIn;
            }

            set
            {
                _madeIn = value;
            }
        }

        public int Quantity
        {
            get
            {
                return _quantity;
            }

            set
            {
                _quantity = value;
            }
        }

        public string Type
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

        public string Unit1
        {
            get
            {
                return _unit1;
            }

            set
            {
                _unit1 = value;
            }
        }

        public string Unit2
        {
            get
            {
                return _unit2;
            }

            set
            {
                _unit2 = value;
            }
        }

        public string Unit3
        {
            get
            {
                return _unit3;
            }

            set
            {
                _unit3 = value;
            }
        }

        public long Price1
        {
            get
            {
                return _price1;
            }

            set
            {
                _price1 = value;
            }
        }

        public long Price2
        {
            get
            {
                return _price2;
            }

            set
            {
                _price2 = value;
            }
        }

        public long Price3
        {
            get
            {
                return _price3;
            }

            set
            {
                _price3 = value;
            }
        }

        public int Discount1
        {
            get
            {
                return _discount1;
            }

            set
            {
                _discount1 = value;
            }
        }

        public int Discount2
        {
            get
            {
                return _discount2;
            }

            set
            {
                _discount2 = value;
            }
        }

        public int Discount3
        {
            get
            {
                return _discount3;
            }

            set
            {
                _discount3 = value;
            }
        }

        public long Vat1
        {
            get
            {
                return _vat1;
            }

            set
            {
                _vat1 = value;
            }
        }

        public long Vat2
        {
            get
            {
                return _vat2;
            }

            set
            {
                _vat2 = value;
            }
        }

        public long Vat3
        {
            get
            {
                return _vat3;
            }

            set
            {
                _vat3 = value;
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
