<#import "parts/common.ftl" as c>

<@c.page>
User editor

<form action="/user" method="post">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <input type="hidden" name="username" value="${user.username}">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("cheked", "")}>${role}</label>
        </div>
    </#list>
    <input type="text" value="${user.id}" name="userId">
    <button type="submit">Save</button>
</form>
</@c.page>