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
    console.log(this.transport);
    //查看transport是否正确创建
    if (!this.transport)
        return;
    var transport = this.transport;
    //解析字面量对象参数
    var _options = {
        method: "GET",
        callback: function() { }
    };
    for (var key in options) {
        _options[key] = options[key];
    }

    console.log(_options.callback);
    //设置连接并发出Ajax请求
    transport.open(_options.method, url, true);
    transport.onreadystatechange = function() {
        _options.callback(transport);
    };
    transport.send();
}