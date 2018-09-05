<!DOCTYPE html>
<!-- saved from url=(0031)http://localhost:8080/yjz/index -->
<html lang="en" class="app js touch no-android no-chrome no-firefox no-iemobile no-ie no-ie8 no-ie10 no-ie11 ios no-ios7 ipad"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Musik | Web Application</title>
    <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/yjz/js/jPlayer/jplayer.flat.css" type="text/css" />
    <link rel="stylesheet" href="/yjz/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="/yjz/css/animate.css" type="text/css" />
    <link rel="stylesheet" href="/yjz/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="/yjz/css/simple-line-icons.css" type="text/css" />
    <link rel="stylesheet" href="/yjz/css/font.css" type="text/css" />
    <link rel="stylesheet" href="/yjz/css/app.css" type="text/css" />
    <!--[if lt IE 9]>
    <script src="/yjz/js/ie/html5shiv.js"></script>
    <script src="/yjz/js/ie/respond.min.js"></script>
    <script src="/yjz/js/ie/excanvas.js"></script>
    <![endif]-->
    <style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
    .en-markup-crop-options {
        top: 18px !important;
        left: 50% !important;
        margin-left: -100px !important;
        width: 200px !important;
        border: 2px rgba(255,255,255,.38) solid !important;
        border-radius: 4px !important;
    }

    .en-markup-crop-options div div:first-of-type {
        margin-left: 0px !important;
    }
    </style></head>
<body class="" style="">
<script src="/yjz/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/yjz/js/bootstrap.js"></script>
<!-- App -->
<script src="/yjz/js/app.js"></script>
<script src="/yjz/js/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/yjz/js/app.plugin.js"></script>
<script type="text/javascript" src="/yjz/js/jPlayer/jquery.jplayer.min.js"></script>
<script type="text/javascript" src="/yjz/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
<script type="text/javascript" src="/yjz/js/jPlayer/demo.js"></script>
<script type="text/javascript">
    function formatTemplate(dta, tmpl) {
        var format = {
            name: function(x) {
                return x ;
            }
        };
        return tmpl.replace(/{(\w+)}/g, function(m1, m2) {
            if (!m2)
                return "";
            return (format && format[m2]) ? format[m2](dta[m2]) : dta[m2];
        });
    }
    function musicPlayed(name) {
		// var name = document.getElementById("song").innerHTML;  
		document.getElementById('songName').innerHTML=name;
		//步骤一:创建异步对象
		// var ajax = new XMLHttpRequest();
		// //步骤二:设置请求的url参数,参数一是请求的类型,参数二是请求的url,可以带参数,动态的传递参数starName到服务端
		// ajax.open('get','/yjz/music/musicRecom');
		// //步骤三:发送请求
		// ajax.send();
		// //步骤四:注册事件 onreadystatechange 状态改变就会调用
		// ajax.onreadystatechange = function () {
		//    if (ajax.readyState==4 &&ajax.status==200) {
		//     //步骤五 如果能够进到这个判断 说明 数据 完美的回来了,并且请求的页面是存在的
		// // 　　　　console.log(ajax.responseText);//输入相应的内容
		//         // $('realTime').append(ajax.responseText);
		//   　}
        $.ajax({
            url: '/yjz/music/reco',
            type: 'get',
            data: {},
            cache: false,
            dataType: "json",
            success: function(dta) {
                console.log(dta);
                // if (!dta || !dta.rows || dta.rows.length <= 0) {
                //     return;
                // }
                //获取模板上的HTML
                var html = $('script[type="text/template"]').html();
                //定义一个数组，用来接收格式化合的数据
                var arr = [];
                //对数据进行遍历
                $.each(dta, function(i, o) {
                    //这里取到o就是上面rows数组中的值, formatTemplate是最开始定义的方法.
                    arr.push(formatTemplate(o, html));
                });
                console.log(arr);
                console.log(arr.join(''));
                //好了，最后把数组化成字符串，并添加到table中去。
                $('#realTime').empty();
                // $('#realTime').append('<script type="text/template">');
                $('#realTime').append(arr.join(''));
                // $('#realTime').append('<\/script>');
                //走完这一步其实就完成了，不会吧，这么简单，不错，就是这么简单!! 不信就自己动手去试试!
            }
        });

    }

</script>
<section class="vbox">
    <#include "header.ftl">
    <section>
        <section class="hbox stretch">
            <!-- .aside -->
            <#include "aside.ftl">
            <!-- /.aside -->
            <section id="content">
                <section class="hbox stretch">
                    <section>
                        <section class="vbox">
                            <section class="scrollable padder-lg w-f-md" id="bjax-target">
                                <a href="/yjz/music/index" class="pull-right text-muted m-t-lg" data-toggle="class:fa-spin"><i class="icon-refresh i-lg  inline" id="refresh"></i></a>
                                <h2 class="font-thin m-b">发现<span class="musicbar inline m-l-sm" style="width:20px;height:20px">
                                <span class="bar1 a1 bg-primary lter"></span>
                                <span class="bar2 a2 bg-info lt"></span>
                                <span class="bar3 a3 bg-success"></span>
                                <span class="bar4 a4 bg-warning dk"></span>
                                <span class="bar5 a5 bg-danger dker"></span>
                                </span></h2>
                                <div class="row row-sm">
                                	<#if musicDTOList?? && musicDTOList?size gt 0>
                                    <#list musicDTOList as music >
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="text-info padder m-t-sm text-sm">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o text-muted"></i>
                                                    </div>
                                                    <div class="center text-center m-t-n">
                                                        <a href="#" onclick="musicPlayed('${music.id}')"><i class="icon-control-play i-2x"></i></a>
                                                    </div>
                                                    <div class="bottom padder m-b-sm">
                                                        <a href="http://localhost:8080/yjz/index#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="http://localhost:8080/yjz/index#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <a href="http://localhost:8080/yjz/index#"><img src="/yjz/${music.pic}" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="http://localhost:8080/yjz/index#" class="text-ellipsis" >音乐：${music.id}</a>
                                                <a href="http://localhost:8080/yjz/index#" class="text-ellipsis text-xs text-muted">艺术家：${music.singer}</a>
                                            </div>
                                        </div>
                                    </div>
                                    </#list>

                                    </#if>
                                    
                                    
                                </div>
                                <div class="row">
                                    <div class="col-md-7">
                                        <h3 class="font-thin">热歌推荐</h3>
                                        <div class="row row-sm">
                                        	<#if new_musicList?? && new_musicList?size gt 0>
                                    		<#list new_musicList as music >
                                            <div class="col-xs-6 col-sm-3">
                                                <div class="item">
                                                    <div class="pos-rlt">
                                                        <div class="item-overlay opacity r r-2x bg-black">
                                                            <div class="center text-center m-t-n">
                                                                <a href="#" onclick="musicPlayed('${music.id}')"><i class="fa fa-play-circle i-2x"></i></a>
                                                            </div>
                                                        </div>
                                                        <a href="http://localhost:8080/yjz/index#"><img src="/yjz/${music.pic}" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="http://localhost:8080/yjz/index#" class="text-ellipsis">音乐：${music.id}</a>
                                                        <a href="http://localhost:8080/yjz/index#" class="text-ellipsis text-xs text-muted">艺术家：${music.singer}</a>
                                                    </div>
                                                </div>
                                            </div>
                                            </#list>
                                    		</#if>
                                            </div>
                                        </div>
                                    <!-- </div> -->
                                    <#--<div class="col-md-5">-->
                                        <#--<h3 class="font-thin">热歌推荐</h3>-->
                                        <#--<div class="list-group bg-white list-group-lg no-bg auto">-->
                                        	<#--<#if hot_musicList?? && hot_musicList?size gt 0>-->
                                    		<#--<#list hot_musicList as music >-->
                                            <#--<a href="#" onclick="musicPlayed('${music.id}')" class="list-group-item clearfix">-->
                                                <#--<span class="pull-right h2 text-muted m-l"></span>-->
                                                <#--<span class="pull-left thumb-sm avatar m-r">-->
                            <#--<img src="/yjz/${music.pic}" alt="...">-->
                          <#--</span>-->
                                                <#--<span class="clear">-->
                            <#--<span>${music.id}</span>-->
                            <#--<small class="text-muted clear text-ellipsis">${music.singer}</small>-->
                          <#--</span>-->
                                            <#--</a>-->
                                            <#--</#list>-->
                                    		<#--</#if>-->
                                        <#--</div>-->
                                    <#--</div>-->
                                </div>
                                <div class="row m-t-lg m-b-lg">
                                    <div class="col-sm-6">
                                        <div class="bg-primary wrapper-md r">
                                            <a href="/yjz/signin">
                                                <span class="h4 m-b-xs block"><i class=" icon-user-follow i-lg"></i>登录</span>
                                                <span class="text-muted"></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="bg-primary wrapper-md r">
                                            <a href="/yjz/signup">
                                                <span class="h4 m-b-xs block"><i class=" icon-user-follow i-lg"></i>注册</span>
                                                <span class="text-muted"></span>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </section>
                            <#include "footer.ftl">
                        </section>
                    </section>
                    <!-- side content -->
                     <#include "right.ftl">
                    <!-- / side content -->
                </section>
                <a href="http://localhost:8080/yjz/index#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
            </section>
        </section>
    </section>
</section>



<!-- 
post方式
//创建异步对象  
var xhr = new XMLHttpRequest();
//设置请求的类型及url
//post请求一定要添加请求头才行不然会报错
xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
 xhr.open('post', '02.post.php' );
//发送请求
xhr.send('name=fox&age=18');
xhr.onreadystatechange = function () {
    // 这步为判断服务器是否正确响应
  if (xhr.readyState == 4 && xhr.status == 200) {
    console.log(xhr.responseText);
  } 
}; -->
</body></html>