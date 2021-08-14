<%@ WebHandler Language="C#" Class="GetText" %>

using System;
using System.Web;

public class GetText : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        if (context.Request.Params["waitTime"] != null)
        {
            int s = Convert.ToInt32(context.Request.Params["waitTime"]);
            System.Threading.Thread.Sleep(s*1000);
        }
        context.Response.ContentType = "text/plain";
        context.Response.Write(DateTime.Now.ToShortTimeString() + ":服务器响应数据...");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}