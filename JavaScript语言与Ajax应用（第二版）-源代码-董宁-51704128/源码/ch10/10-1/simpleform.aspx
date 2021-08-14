<%@ Page Language="C#" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            //清空提示信息
            msg1.Text = "";
            //检查用户名是否为空
            if(Request.Params["userName"].ToString() == "")
                msg1.Text += " 用户名不能为空 ";
            //利用正则表达式检查出生日期格式是否正确
            string birthDay = Request.Params["birthDay"].ToString();
            if (!Regex.IsMatch(birthDay, @"^\d\d\d\d[\/.-]\d\d[\/.-]\d\d$"))
                msg1.Text += " 出生日期格式不正确 ";
        }
    }
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form action="simpleform.aspx" runat="server">
        <span>用户名：</span><input name="userName" type="text" /><br />
        <span>出生日期：</span><input name="birthDay" type="text" /><br />
        <input type="submit" /><asp:Label ID="msg1" runat="server" Text="" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>

