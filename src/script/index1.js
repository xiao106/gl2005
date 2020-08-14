define(['jquery', 'jquerylazyload', "jquerycookie"], function() {
    return {
        init: function() {
            //轮播图
            class Lbt {
                constructor() {
                    //index轮播图
                    //获取元素
                    this.box = $(".banner");
                    this.imgBoxUl = $(".imgBox ul");
                    this.imgLi = $(".imgBox ul li");
                    this.ydBox = $(".ydBox");
                    this.ydLis = $(".ydBox li");
                    this.left = $("#left");
                    this.right = $("#right");
                    this.timer = null;
                    // 计算
                    //图片盒子的宽高
                    //页面宽度
                    this.clientWidth = $(window).width();
                    this.liWidth = this.imgLi.eq(0).width();
                    this.imgBoxUl.css("width", this.clientWidth * this.imgLi.length);


                }
                init() {
                        //index轮播图  
                        this.yuandian();
                        this.mouse();


                    }
                    //圆点点击事件
                yuandian() {
                    this.num = 0;
                    this.ydLis.each((index, selector) => {
                        $(selector).on("click", () => {
                            this.num = index;
                            if ($(selector)[0] != $(".listLi")[0]) {
                                this.move();
                            };
                        });
                    });
                }

                //自动播放
                autoPlay() {
                        this.timer = setInterval(() => {
                            this.num++;
                            if (this.num === this.ydLis.length + 1) {
                                this.imgBoxUl.css({
                                    left: 0
                                });
                                this.num = 1;
                            }
                            //判断设置设置小圆点
                            if (this.num === this.ydLis.length) {
                                this.ydLis.eq(0).addClass('listLi').siblings().removeClass('listLi');
                            } else {
                                this.ydLis.eq(this.num).addClass('listLi').siblings().removeClass('listLi');
                            }
                            this.move();
                        }, 2000)

                    }
                    //页面加载完成自动播放
                mouse() {
                        $(() => {
                            this.autoPlay();
                            this.box.on("mouseover", () => {
                                clearInterval(this.timer);
                            });
                            this.box.on("mouseout", () => {
                                this.autoPlay();
                            });
                        })
                    }
                    //运动函数
                move() {
                    this.ydLis.eq(this.num).addClass("listLi").siblings("li").removeClass("listLi");
                    this.imgBoxUl.stop(true).animate({
                        left: -this.clientWidth * this.num
                    }, 800);
                }
            }
            new Lbt().init();
            //楼梯/台阶
            class Louti {
                constructor() {
                    this.fixedBox = $(".tj");
                    this.lis = $(".tj li");
                    this.span = $(".tj-list span");
                    this.span1 = $(".tj-list .floor_s");
                    this.span2 = $(".tj-list .floor_h");
                    this.divs = $(".lt-list .lt");
                    this.imgBox = $(".tj-img-box");
                    this.ltBox = $(".lt-list");
                    this.y = this.imgBox.offset().top + this.imgBox.outerHeight();
                    this.top = this.ltBox.offset().top + this.ltBox.outerHeight() - this.divs.eq(this.divs.length - 1).outerHeight() / 2;
                }
                init() {
                        //调用函数
                        this.srl();
                        //滚轮事件
                        $(window).on("scroll", () => this.srl());
                        this.zuodaohang();

                    }
                    //封装函数-判断滚动条位置
                srl() {
                        //判断左侧导航的显示隐藏
                        if ($(window).scrollTop() > this.y / 1.5 && $(window).scrollTop() <= this.top) {
                            this.fixedBox.show();
                        } else {
                            this.fixedBox.hide();
                        };
                        //判断滚轮位置和this.divs的位置的小大改变侧导航
                        this.divs.each((index, selector) => { //遍历index下标，selector，dom元素
                            if (this.divs.eq(index).offset().top >= $(window).scrollTop()) {
                                this.lis.eq(index).addClass("floor_hs").siblings("li").removeClass("floor_hs");

                                return false;
                            }
                        });
                    }
                    //点击左侧导航显示相对应内容
                zuodaohang() {
                    this.lis.each((index, item) => {
                        this.lis.eq(index).on("click", () => {
                            this.lis.eq(index).addClass("listli").siblings("li").removeClass("listli");
                            const $top1 = this.divs.eq(index).offset().top;
                            $("html").stop(true).animate({
                                scrollTop: $top1
                            })
                        });
                    })
                }
            }
            new Louti().init();
            //渲染
            class Rander {
                constructor() {
                    this.ltArr = [];
                    this.textArr = [];
                    this.$lt = $(".lt");
                }
                init() {
                    this.ajax();
                }
                ajax() {
                    $.ajax({
                        url: "http://localhost/phpmysql/gelishangcheng/php/alldata.php",
                        dataType: "json",
                    }).done((data) => {
                        //随机六条数据
                        function randomStr() {
                            let str = "";
                            for (let i = 0; i < 6; i++) {
                                let num = Math.floor(Math.random() * 36) + 1;
                                str += `
                                        <dl>
                                             <dt>
                                             <a href="./list.html"><img src=${data[num].src} alt=""></a>
                                             </dt>
                                             <dd>
                                                <a href="./list.html">
                                                    <h4>${data[num].title}</h4>
                                                    <p> ${data[num].title}</p>
                                                </a>
                                                <u>￥${data[num].price}</u>
                                            </dd>
                                        </dl>`
                            }
                            return str;
                        }
                        data.push(...data.slice(0, 6)); //给总数据添加六条数据
                        //渲染总数据
                        $(".lt_right").each((index, item) => {
                            let str = '';
                            for (let i = (index * 6); i < (index + 1) * 6; i++) {
                                str += `
                                            <dl>
                                                <dt>
                                                    <a href="./list.html">
                                                        <img class="lazy" src="" alt="" data-original=${data[i].src} width="190" height="190">
                                                    </a>
                                                </dt>
                                                <dd>
                                                    <a href="./list.html">
                                                        <h4>${data[i].title}</h4>
                                                        <p> ${data[i].title}</p>
                                                    </a>
                                                    <u>￥${data[i].price}</u>
                                                </dd>
                                            </dl>`;
                            }
                            $(item).html(str);
                            $(function() {
                                $('img.lazy').lazyload({
                                    effect: 'fadeIn'
                                })
                            })
                        })
                        this.$lt.each((index, item) => {
                            if ($('.lt').eq(index).find('b').length > 1) {
                                this.ltArr.push(item);
                                this.textArr.push($(item).find('.lt_right').html());
                            }
                        })
                        this.ltArr.forEach((item, index) => {
                                let bArr = Array.from($(item).find('b'));
                                bArr.forEach((item1, index1) => {
                                    $(item1).on("mouseover mouseout", bHandler)
                                })
                            })
                            //楼梯里面的划过效果
                        function bHandler(e) {
                            if (e.type === 'mouseover') {
                                $(this).parent().next().find('.lt_right').html(randomStr());
                            } else {
                                let index = this.ltArr.indexOf($(this).parent().parent()[0]);
                                let strinit = this.textArr[index];
                                $(this).parent().next().find('.lt_right').html(strinit)
                            }
                        }

                    })
                }

            }
            new Rander().init();
            //登录成功
            class Logreg {
                constructor() {
                    this.name_box = $(".name_box");
                    this.box_name = $(".box_name");
                    this.logreg = $(".log_reg");
                }
                init() {
                    this.cook();
                }
                cook() {
                    if ($.cookie("username")) {
                        console.log($.cookie("username"));
                        this.box_name.html($.cookie("username"));
                        this.logreg.css({
                            display: "none"
                        })
                        this.name_box.css({
                            display: "inline"
                        })
                    } else {
                        this.logreg.css({
                            display: "inline"
                        })
                        this.name_box.css({
                            display: "none"
                        })
                    }
                    let $tuichu = $(".tuichu");
                    $tuichu.on("click", () => {
                        this.logreg.css({
                            display: "inline"
                        })
                        this.name_box.css({
                            display: "none"
                        });
                        if ($.cookie("username") && $.cookie("password")) {
                            $.cookie("username", '', { expires: -1, path: '/' });
                            $.cookie("password", '', { expires: -1, path: '/' });
                        }
                    })
                }
            }
            new Logreg().init();
        }
    }

});