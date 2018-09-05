<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>后台管理系统</title>

    <!-- Bootstrap -->
    <link href="/yjz/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/yjz/assets/css/dashboard.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<#--<div class="container-fluid">-->
    <#--<div class="row clearfix">-->
        <#--<div class="col-md-12 column">-->

            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="/yjz/admin">主页</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li >
                            <a href="/yjz/music/list">音乐管理</a>
                        </li>
                        <li>
                            <a href="/yjz/category/list">类别管理</a>
                        </li>
                        <li>
                            <a href="/yjz/user/list">用户管理</a>
                        </li>

                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">欢迎您</a>
                        </li>
                        <li>
                            <a href="#">管理员</a>
                        </li>
                        <li>
                            <a href="#">&nbsp;&nbsp;</a>
                        </li>

                    </ul>
                </div>

            </nav>

            <div class="container-fluid">
                <div class="row">