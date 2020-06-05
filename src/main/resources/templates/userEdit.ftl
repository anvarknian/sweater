<#import "parts/common.ftl" as c>

<@c.page>
User editor

<form action="/user" method="post">
    <input type="text" name="username" value="${user.username}" />
    <#list roles as role>

        <div class="form-check">
            <label class="form-check-label" for="defaultCheck1">
                <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")} />
                ${role}
            </label>
        </div>

    </#list>
    <input type="hidden" value="${user.id}" name="userId"/>
    <input type="hidden" value="${_csrf.token}" name="_csrf"/>
    <button type="submit" class="btn btn-dark ml-2">Сохранить</button>
</form>
</@c.page>
