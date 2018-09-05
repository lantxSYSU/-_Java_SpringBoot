<#include "admin_head.ftl">

<div class="row clearfix">
    <div class="col-md-2 column">
    <#include "admin_nav.ftl">
    </div>
    <div class="col-md-10 column">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-2 column">
                    <button type="button" class="btn btn-default" href="" ><a href="/yjz/admin_musicAdd">添加音乐</a></button>
                </div>
                <form action="/yjz/music/musicSearch" method="post">
                    <div class="col-md-3 column">
                        <input  class="form-control" id="exampleInputEmail1" hidden="请输入歌曲名" name="songName"/>
                    </div>
                    <div class="col-md-2 column">
                        <button type="submit" class="btn btn-default">查询</button>
                    </div>
                </form>
                <div class="col-md-5 column">
                </div>
            </div>
        </div>


        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>
                    编号
                </th>
                <th>
                    歌曲名
                </th>
                <th>
                    类型
                </th>
                <th>
                    歌手
                </th>
                <th>
                    封面图
                </th>
                <th>
                    评分
                </th>
                <th>
                    操作
                </th>
            </tr>
            </thead>
            <tbody>
            <#--<#if musicInfoPage??>-->
            <#--<#list musicInfoPage.content as musicInfo>-->
            <tr>
                <td>
                    ${music.id}
                </td>
                <td>
                    ${music.name}
                </td>
                <td>
                    ${music.type}
                </td>
                <td>
                    ${music.singer}
                </td>
                <td>
                    <img src="/yjz/${music.pic}" height="100" width="70" >
                </td>
                <td>
                    ${music.rank}
                </td>
                <td>
                    <a href="/yjz/music/musicDetail?id=${music.id}">编辑</a>  | <a href="/yjz/music/musicDelete?id=${music.id}">删除</a>
                    | <a href="/yjz/music/musicPic?pic=${music.pic}&id=${music.id}">上传新封面</a>
                </td>
            </tr>
            <#--</#list>-->
            <#--</#if>-->
            </tbody>
        </table>

    <#--分页-->


    </div>
</div>


<#include "admin_foot.ftl">