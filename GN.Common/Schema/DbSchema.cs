using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.CompilerServices;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace GN.Common.Schema
{
    public class DbSchema
    {
        public const string DES = "DESCRIPTION";
        public const string USER = "USER";
        public const string ADD_USER = "ADD_USER";
        public const string ADD_DATE = "ADD_DATE";
        public const string UPDATE_USER = "UPDATE_USER";
        public const string UPDATE_DATE = "UPDATE_DATE";
        public const string VALID_FLAG = "VALID_FLAG";
        public const string TYPE = "TYPE";
        public const string IMAGE_URL = "IMAGE_URL";
        public const string OFFSET = "OFFSET";
        public const string LIMIT = "LIMIT";
        public const string ORDER = "ORDER";

        public static class  Account
        {
            public const string USER_ID = "USER_ID";
            public const string ROLD_ID = "ROLD_ID";
            public const string LAST_NAME = "LAST_NAME";
            public const string FIRST_NAME = "FIRST_NAME";
            public const string PASSWORD = "PASSWORD";
            public const string ADDRESS = "ADDRESS";
            public const string PHONE_NUMBER = "PHONE_NUMBER";
            public const string IDENTIFICATION = "IDENTIFICATION";
            public const string AVATAR_URL = "AVATAR_URL";
            public const string GENDER = "GENDER";

            public const string P_USERENTRY = "P_USERENTRY";
            public const string P_USERDELETE = "p_UserDelete";
            public const string P_ACCOUNT_LOGIN = "P_ACCOUNT_LOGIN";
            public const string P_USERSEARCH = "P_USERSEARCH";

        }

        public static class ItemCode
        {
            public const string CODE_ID = "CODE_ID";
            public const string ITEM_ID = "ITEM_ID";
            public const string ITEM_NAME = "ITEM_NAME";
            public const string IMAGE_URL = "IMAGE_URL";

        }

        public static class Menu
        {
            public const string MENU_ID = "MENU_ID";
            public const string PARENT_ID = "PARENT_ID";
            public const string MENU_NAME = "MENU_NAME";
            //Procedure Process
            public const string P_MENUSEARCH = "P_CATEGORYSEARCH";
            public const string P_MENUENTRY = "P_CATEGORYENTRY";
            public const string P_MENUDELETE = "P_CATEGORYDELETE";
        }

        public static class News
        {
            public const string NEWS_ID = "NEWS_ID";
            public const string TITLE = "TITLE";
            public const string SUMMARY = "SUMMARY";
            public const string CONTENT = "CONTENT";

            public const string P_NEWSENTRY = "P_NEWSENTRY";
            public const string P_NEWSDELETE = "P_NEWSDELETE";
            public const string P_NEWSSEARCH = "P_NEWSSEARCH";
        }

        public static class Product
        {
            public const string PRODUCT_ID = "PRODUCT_ID";
            public const string PRODUCT_NAME = "PRODUCT_NAME";
            public const string MADE_IN = "MADE_IN";
            public const string QUANTITY = "QUANTITY";
            public const string UNIT1 = "UNIT1";
            public const string UNIT2 = "UNIT2";
            public const string UNIT3 = "UNIT3";
            public const string PRICE1 = "PRICE1";
            public const string PRICE2 = "PRICE2";
            public const string PRICE3 = "PRICE3";
            public const string DISCOUNT1 = "DISCOUNT1";
            public const string DISCOUNT2 = "DISCOUNT2";
            public const string DISCOUNT3 = "DISCOUNT3";
            public const string VAT1 = "VAT1";
            public const string VAT2 = "VAT2";
            public const string VAT3 = "VAT3";
            public const string DESCRIPTION = "DESCRIPTION";

            public const string P_PRODUCTENTRY = "P_PRODUCTENTRY"; 
            public const string P_PRODUCTDELETE = "P_PRODUCTDELETE";
            public const string P_PRODUCTALL = "P_PRODUCTALL";
            public const string P_PRODUCT = "P_PRODUCT";
        }

        public static class ProductMenu
        {
            public const string MENU_ID = "MENU_ID";
            public const string PRODUCT_ID = "PRODUCT_ID";
        }

        public static class Role
        {
            public const string ROLE_ID = "ROLE_ID";
            public const string ROLE_NAME = "ROLE_NAME";
            public const string READ_ONLY = "READ_ONLY";
            public const string ENABLE_INSERT = "ENABLE_INSERT";
            public const string ENABLE_UPDATE = "ENABLE_UPDATE";
            public const string ENABLE_DELETE = "ENABLE_DELETE";

            public const string P_ROLESEARCH = "P_ROLESEARCH";
            public const string P_ROLEENTRY = "P_ROLEENTRY";
            public const string P_ROLEDELETE = "P_ROLEDELETE";
        }

        public static class Slide
        {
            public const string SLIDE_ID = "SLIDE_ID";
            public const string SLOGAN1 = "SLOGAN1";
            public const string SLOGAN2 = "SLOGAN2";
            public const string P_SLIDESEARCH = "P_SLIDESEARCH";
            public const string P_SLIDEENTRY = "P_SLIDEENTRY";
            public const string P_SLIDEDELETE = "P_SLIDEDELETE";
        }

    }
}
