using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace GNSeaCorp.cm
{
    public class ImageUtility
    {
        public static bool CheckFileType(string fileName)
        {

            string ext = Path.GetExtension(fileName);

            switch (ext.ToLower())
            {

                case ".gif":

                    return true;

                case ".png":

                    return true;

                case ".jpg":

                    return true;

                case ".jpeg":

                    return true;

                default:

                    return false;

            }

        }
    }
}