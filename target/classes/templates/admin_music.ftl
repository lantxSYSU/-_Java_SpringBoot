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
                    <input  class="form-control" id="exampleInputEmail1" value="请输入歌曲名" name="songName"/>
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
            <#list musicInfoPage.content as musicInfo>
            <tr>
                <td>
                    ${musicInfo.id}
                </td>
                <td>
                    ${musicInfo.name}
                </td>
                <td>
                    ${musicInfo.type}
                </td>
                <td>
                    ${musicInfo.singer}
                </td>
                <td>
                    <img src="/yjz/${musicInfo.pic}" height="100" width="70" >
                </td>
                <td>
                    ${musicInfo.rank}
                </td>
                <td>
                    <a href="/yjz/music/musicDetail?id=${musicInfo.id}">编辑</a>  | <a href="/yjz/music/musicDelete?id=${musicInfo.id}">删除</a>
                    | <a href="/yjz/music/musicPic?pic=${musicInfo.pic}&id=${musicInfo.id}">上传新封面</a>
                </td>
            </tr>
            </#list>
            <#--</#if>-->
            </tbody>
        </table>

    <#--分页-->
        <div class="col-md-12 column">
            <ul class="pagination pull-right">
                    <#if currentPage lte 1>
                        <li class="disabled"><a href="#">上一页</a></li>
                    <#else>
                        <li><a href="/yjz/music/list?page=${currentPage - 1}&size=${size}">上一页</a></li>
                    </#if>

                    <#list 1..musicInfoPage.getTotalPages() as index>
                        <#if currentPage == index>
                            <li class="disabled"><a href="#">${index}</a></li>
                        <#else>
                            <li><a href="/yjz/music/list?page=${index}&size=${size}">${index}</a></li>
                        </#if>
                    </#list>

                    <#if currentPage gte musicInfoPage.getTotalPages()>
                        <li class="disabled"><a href="#">下一页</a></li>
                    <#else>
                        <li><a href="/yjz/music/list?page=${currentPage + 1}&size=${size}">下一页</a></li>
                    </#if>
            </ul>
        </div>

    </div>
</div>


<#include "admin_foot.ftl">