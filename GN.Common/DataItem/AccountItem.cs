using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GN.Common.DataItem
{
    public class AccountItem:DataItem
    {
        private string _userId;
        private string _roldId;
        private string _lastName;
        private string _firstName;
        private string _password;
        private string _address;
        private string _phoneNumber;
        private string _identification;
        private string _avatarUrl;
        private bool _validFlag;
        private string _gender;

        public string UserId
        {
            get
            {
                return _userId;
            }

            set
            {
                _userId = value;
            }
        }

        public string RoldId
        {
            get
            {
                return _roldId;
            }

            set
            {
                _roldId = value;
            }
        }

        public string LastName
        {
            get
            {
                return _lastName;
            }

            set
            {
                _lastName = value;
            }
        }

        public string FirstName
        {
            get
            {
                return _firstName;
            }

            set
            {
                _firstName = value;
            }
        }

        public string Password
        {
            get
            {
                return _password;
            }

            set
            {
                _password = value;
            }
        }

        public string Address
        {
            get
            {
                return _address;
            }

            set
            {
                _address = value;
            }
        }

        public string PhoneNumber
        {
            get
            {
                return _phoneNumber;
            }

            set
            {
                _phoneNumber = value;
            }
        }

        public string Identification
        {
            get
            {
                return _identification;
            }

            set
            {
                _identification = value;
            }
        }

        public string AvatarUrl
        {
            get
            {
                return _avatarUrl;
            }

            set
            {
                _avatarUrl = value;
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

        public string Gender
        {
            get
            {
                return _gender;
            }

            set
            {
                _gender = value;
            }
        }
    }
}
