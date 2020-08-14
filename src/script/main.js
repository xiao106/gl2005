_require.config({
    paths: { //配置名称和路径。
        'jquery': 'https://cdn.bootcdn.net/ajax/libs/jquery/1.12.4/jquery',
        'jquerycookie': 'https://cdn.bootcdn.net/ajax/libs/jquery-cookie/1.4.1/jquery.cookie',
        'jquerylazyload': 'https://cdn.bootcdn.net/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload'
    },
    shim: {
        deps: ["jquery"]
    }
});


_require(['jquery'], function($) { //引入jquery模块
    let $currentpage = $('#currentpage'); //获取元素
    let currentmodule = $currentpage.attr('targetpage'); //获取元素的自定义的属性。

    if (currentmodule) { //模块是否存在
        _require([currentmodule], function(cmodule) { //加载模块
            cmodule.init();
        });
    }
});