<%@ WebHandler Language="C#" Class="AjaxValidate" %>
using System;
using System.Web;
public class AjaxValidate : IHttpHandler {
    public void ProcessRequest(HttpContext context)
    {      
        if (context.Request.Params["field"] != null && context.Request.Params["value"] != null)
        {
            context.Response.ContentType = "text/plain";
            string field = context.Request.Params["field"].ToString();
            switch (field)
            {
                case "dayofyear":
                    try
                    {
                        //检查日期输入是否正确
                        Convert.ToDateTime(context.Request.Params["value"]);
                        context.Response.Write("{\"error\":0,\"msg\":\"\"}");
                    }
                    catch 
                    {
                        //如果不正确则以JSON格式返回信息
                        context.Response.Write("{\"error\":1,\"msg\":\"日期输入不正确！\"}");
                    }
                    break;
                case "name":
                    string name = context.Request.Params["value"].ToString();
                    //检查用户名是否正确，实际应用中应该在数据库中比较
                    if (name == "admin@mymail.com")
                    {
                        //如果存在重名则以JSON格式返回信息
                        context.Response.Write("{\"error\":1,\"msg\":\"用户名“" + name + "”已经存在！\"}");
                    }
                    else
                    {
                        context.Response.Write("{\"error\":0,\"msg\":\"\"}");
                    }
                    break;
                default:
                    context.Response.Write("{\"error\":1,\"msg\":\"输入参数不正确！\"}");
                    break; 
            }
        }
        else
        {
            context.Response.Write("{\"error\":1,\"msg\":\"缺少输入参数！\"}");
        }
    }
    public bool IsReusable {
        get {
            return false;
        }
    }
}