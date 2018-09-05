<!DOCTYPE html>
<html >
<head>
    <meta charset="utf-8" />
    <title>Musik | Web Application</title>
    <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <#--<link rel="stylesheet" href="/yjz/js/jPlayer/jplayer.flat.css" type="text/css" />-->
    <link rel="stylesheet" href="/yjz/css/bootstrap.css" type="text/css" />
    <#--<link rel="stylesheet" href="/yjz/css/animate.css" type="text/css" />-->
    <link rel="stylesheet" href="/yjz/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="/yjz/css/simple-line-icons.css" type="text/css" />
    <link rel="stylesheet" href="/yjz/css/font.css" type="text/css" />
    <link rel="stylesheet" href="/yjz/css/app.css" type="text/css" />
    <script src="/yjz/js/jquery.min.js"></script>
    <script src="/yjz/js/d3.min.js"></script>
    <script src="/yjz/js/d3-transform.js"></script>
    <script src="/yjz/js/extarray.js"></script>
    <script src="/yjz/js/misc.js"></script>
    <script src="/yjz/js/micro-observer.js"></script>
    <script src="/yjz/js/microplugin.js"></script>
    <script src="/yjz/js/bubble-chart.js"></script>
    <script src="/yjz/js/central-click.js"></script>
    <script src="/yjz/js/lines.js"></script>
    <#--<script src="/yjz/assets/js/index.js"></script>-->

    <!--[if lt IE 9]>
    <!--<script src="/yjz/js/ie/html5shiv.js"></script>-->
    <!--<script src="/yjz/js/ie/respond.min.js"></script>-->
    <!--<script src="/yjz/js/ie/excanvas.js"></script>-->
    <#--<script src="http://phuonghuynh.github.io/js/bower_components/jquery/dist/jquery.min.js"></script>
    <#--<script src="http://phuonghuynh.github.io/js/bower_components/d3/d3.min.js"></script>-->
    <#--<script src="http://phuonghuynh.github.io/js/bower_components/d3-transform/src/d3-transform.js"></script>-->
    <#--<script src="http://phuonghuynh.github.io/js/bower_components/cafej/src/extarray.js"></script>-->
    <#--<script src="http://phuonghuynh.github.io/js/bower_components/cafej/src/misc.js"></script>-->
    <#--<script src="http://phuonghuynh.github.io/js/bower_components/cafej/src/micro-observer.js"></script>-->
    <#--<script src="http://phuonghuynh.github.io/js/bower_components/microplugin/src/microplugin.js"></script>-->
    <#--<script src="http://phuonghuynh.github.io/js/bower_components/bubble-chart/src/bubble-chart.js"></script>-->
    <#--<script src="http://phuonghuynh.github.io/js/bower_components/bubble-chart/src/plugins/central-click/central-click.js"></script>-->
    <#--<script src="http://phuonghuynh.github.io/js/bower_components/bubble-chart/src/plugins/lines/lines.js"></script>&ndash;&gt;-->
    <style>
        .bubbleChart {
            min-width: 100px;
            max-width: 700px;
            height: 700px;
            margin: 0 auto;
        }
        .bubbleChart svg{
            background: #D1EEEE;
        }
    </style>
    <#--<![endif]&ndash;&gt;-->
</head>
<body>

<section class="vbox">
        <#include "header.ftl">
    <section>
        <section class="hbox stretch">

                <#include "aside.ftl">


            <section id="content">
                <section class="vbox">
                    <section class="scrollable">
                        <section class="hbox stretch">

                            <aside class="aside-lg bg-light lter b-r">
                                <section class="vbox">
                                    <section class="scrollable">
                                            <#if user??>
                                                <div class="wrapper">
                                                    <div class="text-center m-b m-t">
                                                        <a href="#" class="thumb-lg">
                                                            <img src="/yjz/${user.pic}" class="img-circle">
                                                        </a>
                                                        <div>

                                                            <div class="h3 m-t-xs m-b-xs">用户名：${user.username}</div>
                                                            <small class="text-muted"><i class="fa fa-map-marker"></i>职业：${user.job}</small>

                                                        </div>
                                                    </div>
                                                    <div class="panel wrapper">
                                                        <div class="row text-center">
                                                            <div class="col-xs-6">
                                                                <a href="#">
                                                                    <span class="m-b-xs h4 block">性别：${user.gender}</span>
                                                                    <small class="text-muted"></small>
                                                                </a>
                                                            </div>
                                                            <div class="col-xs-6">
                                                                <a href="#">
                                                                    <span class="m-b-xs h4 block">年龄：${user.age}</span>
                                                                    <small class="text-muted"></small>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="btn-group btn-group-justified m-b">
                                                        <a class="btn btn-success btn-rounded" data-toggle="button" id="personal_modified" >
                                                        <span class="text">
                                                            <i class="fa fa-eye"></i> 修改信息
                                                        </span>

                                                        </a>

                                                    </div>
                                                    <#--<div>-->
                                                        <#--<small class="text-uc text-xs text-muted">About me</small>-->
                                                        <#--<p>喜欢的类型：${user.type}</p>-->
                                                        <#--<small class="text-uc text-xs text-muted">Info</small>-->
                                                        <#--<p>喜欢的歌手：${user.singer}</p>-->
                                                        <#--<div class="line"></div>-->
                                                        <#--<small class="text-uc text-xs text-muted">connection</small>-->
                                                        <#--<p class="m-t-sm">-->
                                                            <#--<a href="#" class="btn btn-rounded btn-twitter btn-icon"><i class="fa fa-twitter"></i></a>-->
                                                            <#--<a href="#" class="btn btn-rounded btn-facebook btn-icon"><i class="fa fa-facebook"></i></a>-->
                                                            <#--<a href="#" class="btn btn-rounded btn-gplus btn-icon"><i class="fa fa-google-plus"></i></a>-->
                                                        <#--</p>-->
                                                    <#--</div>-->
                                                </div>
                                            </#if>
                                    </section>
                                </section>
                            </aside>
                            <#include "person_info.ftl">
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <#--<form action="/yjz/user/save" method="post">-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <h4 class="modal-title" id="myModalLabel">修改信息</h4>
                                        </div>


                                            <div class="modal-body">
                                            <#--<input value="${user.id}" type="hidden" name="id">-->
                                                <input value="${user.username}" type="hidden" name="username" id="username">
                                            <#--<input value="${user.password}" type="hidden" name="password">-->
                                                <div class="form-group">
                                                    <label for="txt_departmentname">职业</label>
                                                    <input type="text" name="job" class="form-control" id="job"  value="${user.job}" >
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_parentdepartment">性别</label>
                                                    <input type="text" name="gender" class="form-control" id="gender"  value="${user.gender}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_departmentlevel">年龄</label>
                                                    <input type="text" name="age" class="form-control" id="age" value="${user.age}" >
                                                </div>
                                                <#--<div class="form-group">-->
                                                    <#--<label for="txt_statu">喜欢的类型</label>-->
                                                    <#--<input type="text" name="type" class="form-control" id="type" value="${user.type}">-->
                                                <#--</div>-->
                                                <#--<div class="form-group">-->
                                                    <#--<label for="txt_statu">喜欢的歌手</label>-->
                                                    <#--<input type="text" name="singer" class="form-control" id="singer" value="${user.singer}">-->
                                                <#--</div>-->
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>取消</button>
                                                <button type="button" id="btn_submit" class="btn btn-primary" data-dismiss="modal" onclick="modified_info()"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true">
                                                </span>保存</button>
                                            </div>

                                    </div>
                                    <#--</form>-->
                                </div>
                            </div>
                        </section>
                    </section>
                </section>
            </section>
        </section>
    </section>
</section>
<#--<script src="/yjz/js/jquery.min.js"></script>-->
<#--<!-- Bootstrap &ndash;&gt;-->
<script src="/yjz/js/bootstrap.js"></script>
<#--<!-- App &ndash;&gt;-->
<#--<script src="/yjz/js/app.js"></script>-->
<#--<script src="/yjz/js/slimscroll/jquery.slimscroll.min.js"></script>-->
<#--<script src="/yjz/js/app.plugin.js"></script>-->
<#--<script type="text/javascript" src="/yjz/js/jPlayer/jquery.jplayer.min.js"></script>-->
<#--<script type="text/javascript" src="/yjz/js/jPlayer/add-on/jplayer.playlist.min.js"></script>-->
<#--<script type="text/javascript" src="/yjz/js/jPlayer/demo.js"></script>-->
<script type="text/javascript">
    function musicPlayed(name) {
        // var name = document.getElementById("song").innerHTML;
        document.getElementById('songName').innerHTML=name;
    }
    $("#personal_modified").click(function () {
        $("#myModalLabel").text("新增");
        $('#myModal').modal();
    });

    function modified_info() {
        var job = $("#job").val();
        var username = $("#username").val();
        var gender = $("#gender").val();
        var age = $("#age").val();
        var singer = 222;//$("#singer").val();
        var type = "流行";//$("#type").val();
        console.log(username);
        var url = "/yjz/user/save?job="+ job + "&username="+ username+ "&gender=" +gender+ "&age="+ age+"&singer="+ singer+"&type="+ type;
        window.location.href = url;
        // $.ajax({
        //     url:"/yjz/user/save?job="+ job + "&username="+ username+
        //     "&gender=" +gender+ "&age="+ age+"&singer="+ singer+"&type="+ type,
        //     type:'get',
        //     data:{}
        //     success:function (data) {
        //         window.location.href = "/yjz/user/detail";
        //     }
        //
        // });
    }
    $(document).ready(function () {
        var bubbleChart = new d3.svg.BubbleChart({
            supportResponsive: true,
            //container: => use @default
            size: 600,
            //viewBoxSize: => use @default
            innerRadius: 600 / 3.5,
            //outerRadius: => use @default
            radiusMin: 50,
            //radiusMax: use @default
            //intersectDelta: use @default
            //intersectInc: use @default
            //circleColor: use @default
            data: {
                items: [
                    {text: "职业:${user.job}", count: "236"},
                    {text: "艺术家:${musicList[0].singer}", count: "182"},
                    {text: "艺术家:${musicList[1].singer}", count: "150"},
                    {text: "艺术家:${musicList[2].singer}", count: "100"},
                    <#--{text: "艺术家:${musicList[3].singer}", count: "382"},-->
                    {text: "性别:${user.gender}", count: "236"},
                    {text: "音乐:${musicList[0].id}", count: "170"},
                    {text: "音乐:${musicList[1].id}", count: "123"},
                    {text: "音乐:${musicList[2].id}", count: "12"},
                    <#--{text: "音乐:${musicList[3].id}", count: "170"},-->
                    {text: "${characterList[0]}", count: "182"},
                    <#--{text: "性格:${characterList[1]}", count: "10"},-->
                    <#--<#if categoryList??>-->
                    {text: "类型:${categoryList[0].name}", count: "170"},
                    {text: "类型:${categoryList[1].name}", count: "150"}
                    <#--</#if>-->
                ],
                eval: function (item) {return item.count;},
                classed: function (item) {return item.text.split(" ").join("");}
            },
            plugins: [
                {
                    name: "central-click",
                    options: {
                        text: "用户:${user.username}",
                        img:"", // buxing
                        style: {

                            "font-size": "40px",
                            "font-style": "",
                            "font-family": "Source Sans Pro, sans-serif",
                            //"font-weight": "700",
                            "text-anchor": "middle",
                            "fill": "white"
                        },
                        attr: {dy: "65px"},
                        centralClick: function() {
                            alert("Here is more details!!");
                        }
                    }
                },
                {
                    name: "lines",
                    options: {
                        format: [
                            // {// Line #0
                            //   textField: "count",
                            //   classed: {count: false},
                            //   style: {
                            //     "font-size": "0px",
                            //     "font-family": "Source Sans Pro, sans-serif",
                            //     "text-anchor": "middle",
                            //     fill: "white"
                            //   },
                            //   attr: {
                            //     dy: "0px",
                            //     x: function (d) {return d.cx;},
                            //     y: function (d) {return d.cy;}
                            //   }
                            // },
                            {// Line #1
                                textField: "text",
                                classed: {text: true},
                                style: {
                                    "font-size": "14px",
                                    "font-family": "Source Sans Pro, sans-serif",
                                    "text-anchor": "middle",
                                    fill: "white"
                                },
                                attr: {
                                    dy: "20px",
                                    x: function (d) {return d.cx;},
                                    y: function (d) {return d.cy;}
                                }
                            }
                        ],
                        centralFormat: [
                            // {// Line #0
                            //   style: {"font-size": "0px"},
                            //   attr: {}
                            // },
                            {// Line #1
                                style: {"font-size": "50px"},
                                attr: {dy: "40px"}
                            }
                        ]
                    }
                }]
        });
    });

</script>
</body>
</html>