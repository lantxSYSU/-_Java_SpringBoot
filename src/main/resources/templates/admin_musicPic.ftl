<#include "admin_head.ftl">

<div class="col-md-2 column">
    <#include "admin_nav.ftl">
</div>
<div class="col-md-10 column">
    <div class="form-group">
        <label for="exampleInputFile">原封面图</label>
        <img src="/yjz/${pic}">
    </div>
    <form action="/yjz/music/musicPicUpdate?id=${id}" method="post" role="form" enctype="multipart/form-data">
    <div class="form-group">
        <label for="exampleInputFile">上传封面图</label>
        <input type="file" id="exampleInputFile" name="pic" />
        <p class="help-block">
            所上传图片将会作为该歌曲的封面展示图

        </p>
    </div>
    <button type="submit" class="btn btn-default">提交</button>
    </form>
</div>
<#include "admin_foot.ftl">