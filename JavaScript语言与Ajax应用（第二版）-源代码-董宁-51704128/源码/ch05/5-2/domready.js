
         function domReady(f) {
             //如果DOM已经载入，立即执行函数
             if (domReady.done) return f();
             //如果我们已经添加过函数
             if (domReady.timer) {
                 //则将函数添加到待执行的函数列表
                 domReady.ready.push(f);
             } else {
                 //为页面完成加载时附加一个事件，以防它率先发生
                 //使用了addListener函数
                 addListener(window, "load", isDOMReady);
                 //初始化待执行函数的数组
                 domReady.ready = [f];
                 //尽可能快地检查DOM是否已就绪
                 domReady.timer = setInterval(isDOMReady, 13);
             }
         }
         //检查DOM是否已经准备好导航
         function isDOMReady() {
             //如果我们断定页面已经加载完成了，则返回
             if (domReady.done) return false;
             //检查一些函数和元素是否已可访问
             if (document && document.getElementsByTagName &&
                 document.getElementById && document.body) {
                 //如果它们已就绪，则停止检查
                 clearInterval(domReady.timer);
                 domReady.timer = null;
                 //执行所有正在等待的函数
                 for (var i = 0; i < domReady.ready.length; i++)
                     domReady.ready[i]();
                 //记住现在我们已经完成
                 domReady.ready = null;
                 domReady.done = true;
             }
         }
         //该函数用于绑定事件，在本章后面会详细讲到
         function addListener(element, event, listener) {
                if (element.addEventListener) {
                    element.addEventListener(event, listener, false);
                } else if (element.attachEvent) {
                    element.attachEvent('on' + event, listener);
                }
            }
         


