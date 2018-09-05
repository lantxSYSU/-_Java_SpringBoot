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
        <section id="content">
          <section class="vbox">
            <section class="w-f-md" id="bjax-target">
              <section class="hbox stretch">
                <!-- side content -->
                <aside class="aside bg-light dk" id="sidebar">
                  <section class="vbox animated fadeInUp">
                    <section class="scrollable hover">
                      <div class="list-group no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                        <#if categories?? && categories?size gt 0>
                        <#list categories as category >
                        <a href="/yjz/music/getMusicByCategory?name=${category.name}" class="list-group-item">
                          ${category.name}
                        </a>
                        </#list>
                        </#if>
                      </div>
                    </section>
                  </section>
                </aside>
                <!-- / side content -->
                <section>
                  <section class="vbox">
                    <section class="scrollable padder-lg">
                      <#if name??>
                      <h2 class="font-thin m-b">${name}</h2>
                      </#if>
                      <div class="row row-sm">
                        <#if musicList?? && musicList?size gt 0>
                        <#list musicList as music >
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#" onclick="musicPlayed('${music.name}')"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="track-detail.html"><img src="/yjz/${music.pic}" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">歌名：${music.name}</a>
                              <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">歌手：${music.singer}</a>
                            </div>
                          </div>
                        </div>
                        </#list>
                        </#if>
                      </div>
                      <ul class="pagination pagination">
                        <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                      </ul>
                    </section>                    
                  </section>
                </section>
              </section>
            </section>
            <#include "footer.ftl">
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section>
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
  function musicPlayed(name) {
    // var name = document.getElementById("song").innerHTML;  
    document.getElementById('songName').innerHTML=name;
  }

</script>
</body>
</html>