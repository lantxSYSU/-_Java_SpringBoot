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
<body class="bg-info dker">
  <section id="content" class="m-t-lg wrapper-md animated fadeInUp">    
    <div class="container aside-xl">
      <a class="navbar-brand block" href="index.html"><span class="h1 font-bold">MUSIC RECSYS</span></a>
      <section class="m-b-lg">
        <header class="wrapper text-center">
          <strong>Sign in to get in touch</strong>
        </header>
        <form action="/yjz/user/login" method="POST">
          <div class="form-group">
            <input name="username" placeholder="Email" class="form-control rounded input-lg text-center no-border">
          </div>
          <div class="form-group">
             <input type="password" placeholder="Password" class="form-control rounded input-lg text-center no-border" name="password">
          </div>
          <button type="submit" class="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded"><i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">登录</span></button>
          <#if msg?? >
          <div class="text-center m-t m-b"><small>${msg}</small></div>
          </#if>
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>没有账户？</small></p>
          <a href="/yjz/signup.ftl" class="btn btn-lg btn-info btn-block rounded">注册</a>
        </form>
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder">
      <p>
        <small>Web app framework base on Bootstrap<br>&copy; 2018</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->
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

</body>
</html>