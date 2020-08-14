define(['jquery', "jquerycookie", "sha1"], function() {
    return {
        init: function() {
            class Login {
                constructor() {
                    this.name = $(".username");
                    this.pass = $(".pass")
                    this.btn = $(".btn");
                    this.em = $(".main_right p em");
                    this.check = $(".check111");
                }
                init() {
                    if ($.cookie("username")) {
                        this.name.val($.cookie("username"));
                    }
                    if ($.cookie("password")) {
                        this.pass.val($.cookie("password"));
                    } else {
                        this.check.prop('checked', false);
                    }
                    if ($.cookie("username") && $.cookie("password")) {
                        this.check.prop('checked', true);
                    }
                    this.ajax();
                }
                ajax() {

                    this.btn.on("click", (e) => {
                        $.ajax({
                            url: "http://localhost/phpmysql/gelishangcheng/php/login.php",
                            type: "post",
                            data: {
                                user: this.name.val(),
                                pass: this.pass.val(),
                            }
                        }).done((data) => {
                            if (data) {
                                console.log(this.check.prop("checked"));
                                if (this.check.prop("checked")) {
                                    $.cookie("password", this.pass.val(), { expires: 7, path: '/' });
                                } else {
                                    if ($.cookie('password')) {
                                        $.cookie("password", '', { expires: -7, path: '/' });
                                    }
                                }
                                $.cookie("username", this.name.val(), { expires: 7, path: '/' });
                                location.href = "http://localhost/phpmysql/gelishangcheng/index1.html";
                            } else {
                                this.em.html("用户名或密码错误");
                                this.em.css({
                                    color: "red"
                                });
                            }
                        })
                        if (e && e.preventDefault) {
                            e.preventDefault();
                        } else {
                            window.event.returnValue = false;
                        }
                    })

                }
            }
            new Login().init();
        }
    }
})