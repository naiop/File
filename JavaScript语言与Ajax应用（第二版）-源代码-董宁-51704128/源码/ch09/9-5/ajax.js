function Ajax() {
    //为不同的浏览器创建XMLHttpRequest对象实例
    var transport;
    if (window.XMLHttpRequest) {
        transport = new XMLHttpRequest();
    } else {
        try {
            transport = new ActiveXObject("MSXML.XMLHTTP.6.0");
        } catch (e) { }
        try {
            transport = new ActiveXObject("MSXML.XMLHTTP");
        } catch (e) { }
    }
    //让transport成为Ajax对象的成员
    this.transport = transport;
}
//为Ajax对象添加发起请求的send方法
Ajax.prototype.send = function(url, options) {

    //查看transport是否正确创建
    if (!this.transport)
        return;
    var transport = this.transport;
    //解析字面量对象参数
    var canceled = false;
    var _options = {
        method: "GET",
        timeout: 5,
        onok: function() { },
        onerror: function() { }
    };
    for (var key in options) {
        _options[key] = options[key];
    }
    //判断Ajax访问是否超时
    function isTimeout() {
        if (transport.readyState != 4) {
            canceled = true;
            //取消Ajax请求
            transport.abort();
        }
    }
    //设置的时间到后检查服务器是否有响应
    window.setTimeout(isTimeout, _options.timeout * 1000);
    //设置连接并发出Ajax请求
    transport.open(_options.method, url, true);
    transport.onreadystatechange = function() {
        if (transport.readyState == 4) {
            if (!canceled && transport.status >= 200 && transport.status < 300)
                _options.onok(transport);
            else {
                _options.onerror(transport);
            }
        }
    };
    transport.send();
}