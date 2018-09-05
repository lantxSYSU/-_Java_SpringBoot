<#include "admin_head.ftl">

<div class="col-md-2 column">
    <#include "admin_nav.ftl">
</div>
<div class="col-md-10 column">
    <#if msg??>
    <div class="alert alert-dismissable alert-danger">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>

        <h4>
            注意!
        </h4> <strong>Warning!</strong>${msg}

    </div>
    </#if>
    <form role="form"   action="/yjz/music/musicUpdate" method="post" >

        <div class="form-group">
            <label for="exampleInputEmail1">歌曲名</label>
            <input  class="form-control" id="exampleInputEmail1" name="name" value="${music.name}"/>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">类型</label>
            <select class="form-control" name="type" onselect="${music.type}">
                <#list categories as category>
                    <option>${category.name}</option>
                </#list>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">歌手</label>
            <input  class="form-control" id="exampleInputEmail1" name="singer" value="${music.singer}"/>
        </div>

        <div class="form-group">
            <label for="exampleInputEmail1">评分等级</label>
            <input  class="form-control" id="exampleInputEmail1" name="rank" value="${music.rank}"/>
        </div>
    <#--<div class="checkbox">-->
    <#--<label><input type="checkbox"/>Check me out</label>-->
    <#--</div>-->
        <button type="submit" class="btn btn-default">提交</button>

    </form>
</div>
<#include "admin_foot.ftl">