<#include "admin_head.ftl">

<div class="row clearfix">
    <div class="col-md-2 column">
    <#include "admin_nav.ftl">
    </div>
    <div class="col-md-10 column">
        <#--<div class="col-md-12 column">-->
            <#--<div class="row clearfix">-->
                <#--<div class="col-md-2 column">-->
                    <#--<button type="button" class="btn btn-default" href="/yjz/music_add">添加音乐</button>-->
                <#--</div>-->
                <#--<div class="col-md-3 column">-->
                    <#--<input type="email" class="form-control" id="exampleInputEmail1" hidden="请输入歌曲名"/>-->
                <#--</div>-->
                <#--<div class="col-md-2 column">-->
                    <#--<button type="button" class="btn btn-default">查询</button>-->
                <#--</div>-->
                <#--<div class="col-md-5 column">-->
                <#--</div>-->
            <#--</div>-->
        <#--</div>-->


        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>
                    ID
                </th>
                <th>
                    用户名
                </th>
                <th>
                    性别
                </th>
                <th>
                    年龄
                </th>
                <th>
                    工作
                </th>
                <th>
                    头像
                </th>
                <th>
                    喜欢的歌手
                </th>
                <th>
                    喜欢的类型
                </th>
            </tr>
            </thead>
            <tbody>
            <#if userList??>
            <#list userList as user>
            <tr>
                <td>
                    ${user.id}
                </td>
                <td>
                    ${user.username}
                </td>
                <td>
                    ${user.gender}
                </td>
                <td>
                    ${user.age}
                </td>
                <td>
                    ${user.job}
                </td>
                <td>
                    <img src="/yjz/${user.pic}" height="100" width="100" >
                </td>
                <td>
                    ${user.singer}
                </td>
                <td>
                    ${user.type}
                </td>
            </tr>
            </#list>
            </#if>
            </tbody>
        </table>
    </div>

</div>


<#include "admin_foot.ftl">