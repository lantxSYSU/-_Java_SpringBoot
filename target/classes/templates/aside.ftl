<aside class="bg-black dk nav-xs aside hidden-print" id="nav">
    <section class="vbox">
        <section class="w-f-md scrollable">
            <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" data-railopacity="0.2">



                <!-- nav -->
                <nav class="nav-primary hidden-xs">
                    <ul class="nav bg clearfix">
                        <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
                            Discover
                        </li>
                        <li>
                            <a href="/yjz/music/index">
                                <i class="icon-disc icon text-success"></i>
                                <span class="font-bold">热门音乐</span>
                            </a>
                        </li>
                        <li>
                            <a href="/yjz/music/genres">
                                <i class="icon-music-tone-alt icon text-info"></i>
                                <span class="font-bold">音乐库</span>
                            </a>
                        </li>
                        <#--<li>-->
                            <#--<a href="/yjz/music/event">-->
                                <#--<i class="icon-drawer icon text-primary-lter"></i>-->
                                <#--<b class="badge bg-primary pull-right">6</b>-->
                                <#--<span class="font-bold">潮流</span>-->
                            <#--</a>-->
                        <#--</li>-->

                        <#--<li>-->
                            <#--<a href="/yjz/music/video" data-target="#content" data-el="#bjax-el" data-replace="true">-->
                                <#--<i class="icon-social-youtube icon  text-primary"></i>-->
                                <#--<span class="font-bold">MV</span>-->
                            <#--</a>-->
                        <#--</li>-->
                        <li class="m-b hidden-nav-xs"></li>
                    </ul>


                </nav>
                <!-- / nav -->
            </div>
        </section>

        <footer class="footer hidden-xs no-padder text-center-nav-xs">
            <div class="bg hidden-xs ">
                <div class="dropdown dropup wrapper-sm clearfix">
                    <a href="http://localhost:8080/yjz/index#" class="dropdown-toggle" data-toggle="dropdown">
                        <#if user??>
                      <span class="thumb-sm avatar pull-left m-l-xs">
                        <img src="/yjz/${user.pic}" class="dker" alt="...">
                        <i class="on b-black"></i>
                    </span>
                    <span class="hidden-nav-xs clear">
                        <span class="block m-l">

                          <strong class="font-bold text-lt">${user.username}</strong>
                          <b class="caret"></b>
                      </span>
                      <span class="text-muted text-xs block m-l">${user.job}</span>
                            </#if>
                  </span>
              </a>
              <ul class="dropdown-menu animated fadeInRight aside text-left">

                <li>
                <a href="/yjz/user/detail">个人信息</a>
                </li>

                <li class="divider"></li>
                <li>
                    <a href="/yjz/user/logout" >注销</a>
                </li>
            </ul>
        </div>
    </div>            </footer>
</section>
</aside>