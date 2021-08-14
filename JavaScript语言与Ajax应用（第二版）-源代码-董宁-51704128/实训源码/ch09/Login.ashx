<%@ WebHandler Language="C#" Class="Login" %>
using System;
using System.Web;
public class Login : IHttpHandler {    
    public void ProcessRequest (HttpContext context) {
        //延时3秒，让Ajax效果更明显
        System.Threading.Thread.Sleep(3000);
        if (context.Request.Params["name"] != null && context.Request.Params["psw"] != null)
        {
            if (context.Request.Params["name"].ToString() == "admin" && context.Request.Params["psw"].ToString() == "admin")
            {
                context.Response.ContentType = "text/plain";
                context.Response.Write("{\"isLogin\":\"true\"}");
            }
            else
            {
                context.Response.ContentType = "text/plain";
                context.Response.Write("{\"isLogin\":\"false\"}");
            }
            
        }
        else
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("{\"isLogin\":\"false\"}");
        }
    }
    public bool IsReusable {
        get {
            return false;
        }
    }
}