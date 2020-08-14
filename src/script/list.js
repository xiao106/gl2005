define(['jquery', 'jquerylazyload', "jquery.pagination"], function($) {
    return {
        init: function() {
            //渲染
            class List {
                constructor() {
                    this.main_list_c = $(".main_list_c");
                    this.title2 = $(".nav_tt>h5");
                    this.num = $(".main_fil  em");
                    this.array_default = []; //排序前的数组，默认的
                    this.array = []; //排序中的数组
                    this.prev = null; //当前的li里面的价格。
                    this.next = null; //下一个li里面的价格。
                }
                init() {
                        // this.ajax();
                        this.pagination();
                        this.toggle();
                    }
                    //列表显示隐藏;
                toggle() {
                    this.title2.each((index, item) => {
                        this.title2.eq(index).on("click", () => {
                            this.title2.eq(index).next().toggle({
                                display: "none"
                            })
                        })
                    })
                }
                pagination() {
                    //排序的初始值
                    // console.log($(".main_list_c dl u"));


                    //一.渲染列表页的数据-默认渲染第一页(10条数据)
                    //后端接口不再是将数据全部输出，按照分页方式进行输出。
                    //传递页面给后端 - get方法。
                    //没有传输页面，后端默认返回第一页的数据。
                    const $list = $('.list'); //获取元素对象
                    $.ajax({
                        url: 'http://localhost/phpmysql/gelishangcheng/php/listdata.php', //接口地址
                        dataType: 'json' //数据结构
                    }).done((data) => { //data:返回的数据
                        //拼接
                        let $strhtml = '';
                        $.each(data, (index, value) => {
                            $strhtml += `
                            <dl class="float_left">
                            <dt>
                                <a href="./detail.html?sid=${value.sid}"><img class="lazy" src="" alt="" data-original=${value.src} width="220" height="220"></a>
                                
                             </dt>
                            <dd>
                                <a href="./detail.html">
                                    <h4> ${value.title} </h4>
                                    <p>${value.type}</p>
                                </a>
                            </dd>
                            <dd><u>￥${value.price}</u><em>包邮</em></dd>
                            <dd>
                                已有<b>${value.sailnum}</b> 人购买
                            </dd>
                            <dd class="jia_car">
                               <a href="./car.html"><span>进入购物车</span></a>
                            </dd>
                        </dl>
                                `;
                        });
                        this.main_list_c.html($strhtml);
                        this.num.html(data.length);

                        //二.添加懒加载
                        //原理：当前的图片进入可视区(滚动条的高度+可视区的高度>包含图片的盒子的top值)，将自定义属性的值给图片的src属性。

                        //1.添加class=lazy
                        //2.设置自定义的属性data-original，自定义属性里面是真正的图片地址
                        //3.设置图片的宽高
                        //下面的代码
                        $(() => {
                            $("img.lazy").lazyload({ effect: "fadeIn" });
                        });


                        //三.进入分页设置：
                        //1.引入分页的插件 - jquery.pagination.js
                        //2.引入分页的结构html
                        //3.引入分页的样式css
                        //4.加载分页的代码
                        // $('.page').pagination({})


                        //分页：
                        //先清空数组原来的值。
                        this.array_default = []; //排序前的li数组
                        this.array = []; //排序中的数组
                        this.prev = null;
                        this.next = null;
                        //将页面默认渲染的li元素加载到两个数组中
                        $('.main_list_c dl').each((index, element) => { //index:下标索引 element:元素对象 $(this):元素对象
                            this.array[index] = $(element); //赋值给数组
                            this.array_default[index] = $(element); //赋值给数组

                        });
                        console.log('1' + this.array); //10个li元素

                    });



                    //告知后端当前请求的是第几页数据。将当前的页面页码传递给后端(get和page)
                    $('.page').pagination({
                        pageCount: 3, //总的页数
                        jump: true, //是否开启跳转到指定的页数，布尔值。
                        prevContent: '上一页',
                        nextContent: '下一页',
                        // coping: true, //是否开启首页和尾页，布尔值。
                        // homePage: '首页',
                        // endPage: '尾页',
                        callback: (api) => { //api:对象，包含分页信息。
                            //点击分页页码将页码传给后端。
                            //获取的页码给后端
                            // console.log(api.getCurrent());
                            $.ajax({
                                url: 'http://localhost/phpmysql/gelishangcheng/php/listdata.php',
                                data: { //将分页对象返回的页码传输给后端
                                    page: api.getCurrent()
                                },
                                dataType: 'json'
                            }).done((data) => { //data:返回的数据
                                //拼接
                                let $strhtml = '';
                                $.each(data, (index, value) => {
                                    $strhtml += `
                                    <dl class="float_left">
                                    <dt>
                                        <a href="./detail.html?sid=${value.sid}"><img class="lazy" src="" alt="" data-original=${value.src} width="220" height="220"></a>
                                        
                                     </dt>
                                    <dd>
                                        <a href="./detail.html">
                                            <h4> ${value.title} </h4>
                                            <p>${value.type}</p>
                                        </a>
                                    </dd>
                                    <dd><u>￥${value.price}</u><em>包邮</em></dd>
                                    <dd>
                                        已有<b>${value.sailnum}</b> 人购买
                                    </dd>
                                    <dd class="jia_car">
                                       <a href="./car.html"><span>进入购物车</span></a>
                                    </dd>
                                </dl>
                                        `;
                                });
                                this.main_list_c.html($strhtml);

                                this.num.html(data.length); //新的数据覆盖前面默认的数据。
                                $(() => {
                                    $("img.lazy").lazyload({ effect: "fadeIn" });
                                });
                                //分页结束了。

                                this.array_default = []; //排序前的li数组
                                this.array = []; //排序中的数组
                                this.prev = null;
                                this.next = null;

                                //将页面的li元素加载到两个数组中
                                $('.main_list_c dl').each((index, element) => {
                                    this.array[index] = $(element);
                                    this.array_default[index] = $(element);
                                });
                            })
                        }
                    });

                    //四.排序
                    //默认排序：获取默认数组的值this.array_default，进行追加。
                    // $('button').eq(0).on('click', ()=> {
                    //     $.each(this.array_default, function(index, value) { //遍历追加
                    //         $('.list ul').append(value);
                    //     });
                    //     return;
                    // });


                    $('.main_price1').on('click', () => {
                        for (let i = 0; i < this.array.length - 1; i++) {
                            for (let j = 0; j < this.array.length - i - 1; j++) {
                                console.log($('.main_list_c dl u').html());
                                this.prev = parseFloat(this.array[j].find('u').html().substring(1)); //当前li的价格
                                console.log(this.array);

                                this.next = parseFloat(this.array[j + 1].find('u').html().substring(1)); //下一个li的价格
                                // 通过价格的判断，改变的是li的位置。
                                //如果第一个li里面的价格>第二个li的价格。 交换的是li的位置。
                                if (this.prev > this.next) {
                                    let temp = this.array[j];
                                    this.array[j] = this.array[j + 1];
                                    this.array[j + 1] = temp;
                                }
                            }
                        }
                        //清空原来的列表，将排序后的数据添加上去。
                        //empty() : 删除匹配的元素集合中所有的子节点。
                        $('.main_list_c').empty(); //清空原来的列表
                        $.each(this.array, (index, value) => { //重新渲染，追加
                            $('.main_list_c').append(value);
                        });
                    });
                    $('.main_price2').on('click', () => {
                        for (let i = 0; i < this.array.length - 1; i++) {
                            for (let j = 0; j < this.array.length - i - 1; j++) {
                                this.prev = parseFloat(this.array[j].find(' u').html().substring(1));
                                this.next = parseFloat(this.array[j + 1].find(' u').html().substring(1));
                                //通过价格的判断，改变的是li的位置。
                                if (this.prev < this.next) {
                                    let temp = this.array[j];
                                    this.array[j] = this.array[j + 1];
                                    this.array[j + 1] = temp;
                                }
                            }
                        }
                        //清空原来的列表，将排序后的数据添加上去。
                        //empty() : 删除匹配的元素集合中所有的子节点。
                        $('.main_list_c').empty(); //清空原来的列表
                        $.each(this.array, (index, value) => {
                            $('.main_list_c').append(value);
                        });
                    })



                }

            };
            new List().init();
        }
    }
});