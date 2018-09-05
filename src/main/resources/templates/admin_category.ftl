<#include "admin_head.ftl">

<div class="row clearfix">
    <div class="col-md-2 column">
    <#include "admin_nav.ftl">
    </div>
    <div class="col-md-10 column">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <form action="/yjz/category/add">
                <div class="col-md-3 column">
                    <input  class="form-control" id="exampleInputEmail1" value="请输入类型名" name="type"/>
                </div>
                <div class="col-md-2 column">
                    <button type="submit" class="btn btn-default">添加</button>
                </div>
                </form>
                <div class="col-md-7 column">
                </div>
            </div>
        </div>


        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>
                    ID
                </th>
                <th>
                    类型
                </th>
                <th>
                    操作
                </th>

            </tr>
            </thead>
            <tbody>
            <#if categories??>
            <#list categories as category>
            <tr>
                <td>
                    ${category.id}
                </td>
                <td>
                    ${category.name}
                </td>
                <td>
                    <a href="/yjz/category/delete?id=${category.id}" >删除</a>
                </td>
            </tr>
            </#list>
            </#if>
            </tbody>
        </table>
    </div>

</div>


<#include "admin_foot.ftl">