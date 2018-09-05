<footer class="footer bg-dark">
    <div id="jp_container_N" class="jp-video-270p">
        <div class="jp-type-playlist">
            <!-- <div id="jplayer_N" class="jp-jplayer hide" style="width: 480px; height: 270px;"><img id="jp_poster_0" style="width: 480px; height: 270px; display: inline;" src="/yjz/images/m0.jpg"><audio id="jp_audio_0" preload="metadata" src="http://flatfull.com/themes/assets/musics/adg3com_bustedchump.mp3" title="Busted Chump"></audio><video id="jp_video_0" preload="metadata" style="width: 0px; height: 0px;" title="Busted Chump"></video></div> -->
            <div class="jp-gui">
                <div class="jp-video-play hide" style="display: block;">
                    <a class="jp-video-play-icon">play</a>
                </div>
                <div class="jp-interface">
                    <div class="jp-controls">
                        <div><a class="jp-previous"><i class="icon-control-rewind i-lg"></i></a></div>
                        <div>
                            <a class="jp-play" style="display: inline-block;"><i class="icon-control-play i-2x"></i></a>
                            <a class="jp-pause hid" style="display: none;"><i class="icon-control-pause i-2x"></i></a>
                        </div>
                        <div><a class="jp-next"><i class="icon-control-forward i-lg"></i></a></div>
                        <div class="hide"><a class="jp-stop"><i class="fa fa-stop"></i></a></div>
                        <!-- <div><a class="" data-toggle="dropdown" data-target="#playlist"><i class="icon-list"></i></a></div> -->
                        <div class="jp-progress hidden-xs">
                            <div class="jp-seek-bar dk" style="width: 100%;">
                                <div class="jp-play-bar bg-info" style="width: 0%;">
                                </div>
                                <div id="songName" class="jp-title text-lt" style="display: none;"></div>
                                <#--<button onclick="songRank()">评分</button>-->
                                <#--<a href="" onclick="songRank()">评分</a>-->
                            </div>
                        </div>
                        <div class="hidden-xs hidden-sm jp-current-time text-xs text-muted"><a href="#"  id="showRank">评分</a></div>
                        <#--<div class="hidden-xs hidden-sm jp-duration text-xs text-muted">00:00</div>-->
                        <div class="hidden-xs hidden-sm">
                            <a class="jp-mute" title="mute" style="display: none;"><i class="icon-volume-2"></i></a>
                            <a class="jp-unmute hid" title="unmute" style="display: none;"><i class="icon-volume-off"></i></a>
                        </div>
                        <div class="hidden-xs hidden-sm jp-volume">
                            <div class="jp-volume-bar dk" style="display: none;">
                                <div class="jp-volume-bar-value lter" style="display: none;"></div>
                            </div>
                        </div>
                        <div>
                            <a class="jp-shuffle" title="shuffle"><i class="icon-shuffle text-muted"></i></a>
                            <a class="jp-shuffle-off hid" title="shuffle off" style="display: none;"><i class="icon-shuffle text-lt"></i></a>
                        </div>
                        <div>
                            <a class="jp-repeat" title="repeat"><i class="icon-loop text-muted"></i></a>
                            <a class="jp-repeat-off hid" title="repeat off" style="display: none;"><i class="icon-loop text-lt"></i></a>
                        </div>
                        <div class="hide">
                            <a class="jp-full-screen" title="full screen"><i class="fa fa-expand"></i></a>
                            <a class="jp-restore-screen" title="restore screen" style="display: none;"><i class="fa fa-compress text-lt"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="jp-playlist dropup" id="playlist">
                <ul class="dropdown-menu aside-xl dker" style="display: block;"><li class="jp-playlist-current"><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item jp-playlist-current" tabindex="1">Busted Chump <span class="jp-artist">by ADG3</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Chucked Knuckles <span class="jp-artist">by 3studios</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Cloudless Days <span class="jp-artist">by ADG3 Studios</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Core Issues <span class="jp-artist">by Studios</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Cryptic Psyche <span class="jp-artist">by ADG3</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Electro Freak <span class="jp-artist">by Studios</span></a></div></li><li><div><a href="javascript:;" class="jp-playlist-item-remove">×</a><a href="javascript:;" class="jp-playlist-item" tabindex="1">Freeform <span class="jp-artist">by ADG</span></a></div></li></ul>
            </div>
            <div class="jp-no-solution hide" style="display: none;">
                <span>Update Required</span>
                To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
            </div>
        </div>
    </div>
</footer>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
            </div>
            <div class="modal-body">
                <div  id="rank" >
                    <input type="radio" class="btn btn-default" value="1" name="aaa" id="bbb">难听</input>
                    <input type="radio" class="btn btn-default" value="2" name="aaa">不推荐</input>
                    <input type="radio" class="btn btn-default" value="3" name="aaa">一般般</input>
                    <input type="radio" class="btn btn-default" value="4" name="aaa">好听</input>
                    <input type="radio" class="btn btn-default" value="5" name="aaa">超好听</input>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="songRank()">确认打分</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<script type="text/javascript">
    function songRank() {
        // $("input[name='aaa']").off().on("change", function () {
        //     var btnval = $(this).text();
        //     console.log(btnval);
        // });
        var value = $("#bbb").val();
        var songName = $("#songName").text();
        console.log(songName);
        var url = "/yjz/music/musicRank?songName=" + songName + "&rank=" + value;
        window.location.href = url
    }
    // showRank

    $("#showRank").click(function () {
        $("#myModalLabel").text("评分");
        $('#myModal').modal();
    });
</script>