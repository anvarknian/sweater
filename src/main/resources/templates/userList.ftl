<#import "parts/common.ftl" as c>

<@c.page>
    Список всех пользователей

    <table class="table">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Логин</th>
            <th scope="col">Права</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <th scope="row">${user.id}</th>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a class="btn btn-primary" href="/user/${user.id}">Изменить</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>
