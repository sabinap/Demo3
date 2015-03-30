using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApplication.Web_Services
{
    /// <summary>
    /// Summary description for Orders
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Orders : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        /// <summary>
        /// Same parameter name as in Ajax request in "data"
        /// </summary>
        /// <param name="products"></param>
        /// <returns></returns>
        [WebMethod]
        public string Order(string products) {
            string prod = products;

            //split product ids here
            string[] ids = prod.Split(' ');

            return string.Empty;
        }
    }
}
