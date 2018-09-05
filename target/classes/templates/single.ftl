<!DOCTYPE html>
<html lang="en" class="app">
<head>
    <meta charset="utf-8" />
    <title>Musik | Web Application</title>
    <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
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
</head>
<body class="">
<section class="vbox">
    <#include "header.ftl">
    <section>
        <section class="hbox stretch">
            <!-- .aside -->
        <#include "aside.ftl">
            <!-- /.aside -->
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
                                <a href="#" onclick="musicPlayed('${music.name}')"><i class="icon-control-play i-2x"></i></a>
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
                        <a href="http://localhost:8080/yjz/index#" class="text-ellipsis" >歌名：${music.name}</a>
                        <a href="http://localhost:8080/yjz/index#" class="text-ellipsis text-xs text-muted">歌手：${music.singer}</a>
                    </div>
                </div>
            </div>
        </section>
    </section>
<#--<#include "footer.ftl">-->
</section>
