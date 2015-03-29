using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            string root = HttpContext.Current.Request.Url.ToString();
            string redirectUrl = root.Substring(0, root.IndexOf(HttpContext.Current.Request.Url.LocalPath.ToString())) + "/Pages/Home.aspx";
            if (root.Contains("default.aspx"))
                Response.Redirect(redirectUrl);
                //Server.Execute("/Pages/Home.aspx");
        }

        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            // string request = Request.Url.AbsoluteUri;
            //var application = sender as  HttpApplication;
            //var context = application.Context;
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }

        void Session_Start(object sender, EventArgs e)
        {
            // Code that runs when a new session is started

        }

        void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends. 
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer 
            // or SQLServer, the event is not raised.

        }

    }
}
